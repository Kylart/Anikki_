import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/domain/domain.dart';

part 'torrent_event.dart';
part 'torrent_state.dart';

class TorrentBloc extends Bloc<TorrentEvent, TorrentState> {
  TorrentRepository repository;

  Timer? interval;

  bool isLoading = false;

  bool get isTransmission => repository is TransmissionRepository;
  bool get isQBitTorrent => repository is QBitTorrentRepository;
  bool get isTorrest => repository is TorrestRepository;
  bool get isEmpty => repository is EmptyRepository;

  TorrentBloc(this.repository) : super(TorrentInitial()) {
    on<TorrentSettingsUpdated>(_onSettingsUpdated);
    on<TorrentDataRequested>(_onDataRequested);
    on<TorrentPauseTorrent>(_onPauseTorrent);
    on<TorrentStartTorrent>(_onStartTorrent);
    on<TorrentRemoveTorrent>(_onRemoveTorrent);
    on<TorrentAddTorrent>(_onAddTorrent);

    _setUpInterval();
  }

  void _closeInterval() {
    interval?.cancel();
    interval = null;
  }

  void _setUpInterval() {
    interval ??= Timer.periodic(const Duration(seconds: 1), (timer) {
      if (isClosed) return _closeInterval();

      add(TorrentDataRequested());
    });
  }

  Future<void> _onSettingsUpdated(
    TorrentSettingsUpdated event,
    Emitter<TorrentState> emit,
  ) async {
    if (event.transmissionSettings != null) {
      final settings = event.transmissionSettings as TransmissionSettings;

      repository = TransmissionRepository(
        username: settings.username,
        password: settings.password,
        uri: Uri(
          scheme: settings.scheme,
          host: settings.host,
          port: settings.port,
          path: 'transmission/rpc',
        ),
      );
    }

    if (event.qBitTorrentSettings != null) {
      final settings = event.qBitTorrentSettings as QBitTorrentSettings;

      repository = QBitTorrentRepository(
        username: settings.username,
        password: settings.password,
        uri: Uri(
          scheme: settings.scheme,
          host: settings.host,
          port: settings.port,
        ),
      );
    }

    if (event.torrestSettings != null) {
      final settings = event.torrestSettings as TorrestSettings;

      if (settings.port != repository.uri.port) {
        // Shutdown torrest if port is changed because we need to restart it
        if (repository is TorrestRepository) {
          await (repository as TorrestRepository).shutDown().catchError(
            (e) => logger.warning('Failed to shut down torrest'),
          );
        }

        if (settings.port != repository.uri.port) {
          await TorrestRepository.startServer(settings.port);

          repository = TorrestRepository(
            uri: Uri(scheme: 'http', host: 'localhost', port: settings.port),
          );
        }
      }

      if (settings.downloadPath != null) {
        await (repository as TorrestRepository).setDownloadPath(
          settings.downloadPath!,
        );
      }
    }

    if (repository is EmptyRepository) return;

    try {
      await repository.login();
      add(TorrentDataRequested());
    } on UnauthorizedError {
      emit(TorrentUnauthorized());
    }
  }

  Future<void> _onDataRequested(
    TorrentDataRequested event,
    Emitter<TorrentState> emit,
  ) async {
    if (repository is EmptyRepository) return;
    if (isLoading) return;

    isLoading = true;

    try {
      var torrents = await repository.getTorrents();
      final loaded = TorrentLoaded(torrents);

      final medias = await Media.fromNames(
        loaded.torrents.map((e) => e.name).toList(),
        useCache: true,
      );

      for (var i = 0; i < loaded.torrents.length; i++) {
        final torrent = loaded.torrents[i];
        final media = medias[i];

        torrents[i] = torrent.copyWith(media: media);
      }

      emit(loaded.torrents.isEmpty ? TorrentEmpty() : loaded);
    } on UserIsBannedError {
      _closeInterval();

      Timer(const Duration(minutes: 5), _setUpInterval);
    } catch (e) {
      emit(TorrentCannotLoad());
    } finally {
      isLoading = false;
    }
  }

  Future<void> _onPauseTorrent(
    TorrentPauseTorrent event,
    Emitter<TorrentState> emit,
  ) async {
    await repository.stopTorrent(event.torrent);

    add(TorrentDataRequested());
  }

  Future<void> _onStartTorrent(
    TorrentStartTorrent event,
    Emitter<TorrentState> emit,
  ) async {
    await repository.startTorrent(event.torrent);

    add(TorrentDataRequested());
  }

  Future<void> _onRemoveTorrent(
    TorrentRemoveTorrent event,
    Emitter<TorrentState> emit,
  ) async {
    await repository.removeTorrent(event.torrent, event.removeFile);

    add(TorrentDataRequested());
  }

  Future<void> _onAddTorrent(
    TorrentAddTorrent event,
    Emitter<TorrentState> emit,
  ) async {
    final torrent = await repository.addTorrent(event.magnet);

    if (event.stream) {
      await repository.streamTorrent(torrent);

      if (event.callback != null) {
        event.callback!(torrent);
      }
    }
  }
}
