import 'dart:async';
import 'dart:ffi';
import 'package:ffi/ffi.dart';

typedef StartC =
    Int32 Function(Uint16 port, Pointer<Utf8> settingsPath, Int globalLogLevel);
typedef StartFunc =
    int Function(int port, Pointer<Utf8> settingsPath, int globalLogLevel);

class Torrest {
  final DynamicLibrary _library;

  final int port;
  final String settingsPath;

  static Future<Torrest> init(
    String libPath, [
    int port = 15666,
    String settingsPath = 'settings.json',
  ]) async {
    final library = DynamicLibrary.open(libPath);

    return Torrest(library, port: port, settingsPath: settingsPath);
  }

  const Torrest(
    this._library, {
    required this.port,
    required this.settingsPath,
  });

  StartFunc get _start =>
      _library.lookupFunction<StartC, StartFunc>('start_async_server');

  void start() {
    _start(
      port,
      settingsPath.toNativeUtf8(),
      1, // Assuming globalLogLevel is an integer
    );
  }
}
