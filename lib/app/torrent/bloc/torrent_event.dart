part of 'torrent_bloc.dart';

abstract class TorrentEvent extends Equatable {
  const TorrentEvent();

  @override
  List<Object> get props => [];
}

class TorrentDataRequested extends TorrentEvent {}

class TorrentSettingsUpdated extends TorrentEvent {
  TorrentSettingsUpdated({
    this.transmissionSettings,
    this.qBitTorrentSettings,
    this.torrestSettings,
  }) {
    if (transmissionSettings != null) {
      assert(
        qBitTorrentSettings == null,
        'Cannot have transmission and qbittorrent settings at the same time.',
      );
      assert(
        torrestSettings == null,
        'Cannot have transmission and torrest settings at the same time.',
      );
    }

    if (qBitTorrentSettings != null) {
      assert(
        transmissionSettings == null,
        'Cannot have transmission and qbittorrent settings at the same time.',
      );
      assert(
        torrestSettings == null,
        'Cannot have transmission and torrest settings at the same time.',
      );
    }

    if (torrestSettings != null) {
      assert(
        transmissionSettings == null,
        'Cannot have transmission and torrest settings at the same time.',
      );
      assert(
        qBitTorrentSettings == null,
        'Cannot have qbittorrent and torrest settings at the same time.',
      );
    }
  }

  final TransmissionSettings? transmissionSettings;
  final QBitTorrentSettings? qBitTorrentSettings;
  final TorrestSettings? torrestSettings;

  @override
  List<Object> get props => [
    if (transmissionSettings != null) transmissionSettings!,
    if (qBitTorrentSettings != null) qBitTorrentSettings!,
    if (torrestSettings != null) torrestSettings!,
  ];
}

class TorrentPauseTorrent extends TorrentEvent {
  const TorrentPauseTorrent(this.torrent);

  final Torrent torrent;

  @override
  List<Object> get props => [torrent];
}

class TorrentStartTorrent extends TorrentEvent {
  const TorrentStartTorrent(this.torrent);

  final Torrent torrent;

  @override
  List<Object> get props => [torrent];
}

class TorrentRemoveTorrent extends TorrentEvent {
  const TorrentRemoveTorrent(this.torrent, [this.removeFile = false]);

  final Torrent torrent;
  final bool removeFile;

  @override
  List<Object> get props => [
    torrent,
    removeFile,
  ];
}

class TorrentAddTorrent extends TorrentEvent {
  const TorrentAddTorrent({
    required this.magnet,
    this.stream = true,
    this.callback,
  });

  final String magnet;
  final bool stream;
  final FutureOr<void> Function(Torrent torrent)? callback;

  @override
  List<Object> get props => [
    magnet,
    stream,
  ];
}
