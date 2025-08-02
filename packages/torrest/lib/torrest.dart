import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

typedef StartC =
    Int32 Function(
      Uint16 port,
      Pointer<Utf8> settingsPath,
      Pointer<Utf8> logsPath,
    );
typedef StartFunc =
    int Function(int port, Pointer<Utf8> settingsPath, Pointer<Utf8> logsPath);

class Torrest {
  final DynamicLibrary _library;

  final int port;
  final String settingsPath;
  final String logsPath;

  static Future<Torrest> init(
    String libPath, [
    int port = 15666,
    String settingsPath = 'settings.json',
    String logsPath = 'logs.json',
  ]) async {
    final library = DynamicLibrary.open(libPath);

    return Torrest(
      library,
      port: port,
      settingsPath: settingsPath,
      logsPath: logsPath,
    );
  }

  const Torrest(
    this._library, {
    required this.port,
    required this.settingsPath,
    required this.logsPath,
  });

  StartFunc get _start =>
      _library.lookupFunction<StartC, StartFunc>('start_async_server');

  void start() {
    final settingsFile = File(settingsPath);

    if (!settingsFile.existsSync()) {
      settingsFile.createSync(recursive: true);
    }

    _start(port, settingsPath.toNativeUtf8(), logsPath.toNativeUtf8());
  }
}
