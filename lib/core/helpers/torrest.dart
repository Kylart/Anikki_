import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:torrest/torrest.dart';

Future<String> _getCPUArchitecture() async {
  if (Platform.isWindows) {
    var cpu = String.fromEnvironment('PROCESSOR_ARCHITECTURE');
    return cpu;
  } else {
    var info = await Process.run('uname', ['-m']);
    var cpu = info.stdout.toString().replaceAll('\n', '');
    return cpu;
  }
}

Future<String> _getlibName() async {
  final arch = await _getCPUArchitecture();

  if (Platform.isMacOS) {
    return 'libtorrest-$arch.dylib';
  } else if (Platform.isLinux) {
    return 'libtorrest.so';
  } else if (Platform.isWindows) {
    return 'torrest.dll';
  }

  throw UnsupportedError('Unsupported platform: ${Platform.operatingSystem}');
}

Future<String> _getDylibPath() async {
  final libName = await _getlibName();

  final asset = await rootBundle.load('assets/torrest/$libName');
  final applicationsDirectory = await getTemporaryDirectory();

  final dylibPath = join(applicationsDirectory.path, 'anikki', libName);
  final file = File(dylibPath);

  await file.create(recursive: true);
  await file.writeAsBytes(asset.buffer.asUint8List());

  return dylibPath;
}

Future<Torrest> startTorrest(Directory baseDir) async {
  final torrest = await Torrest.init(
    await _getDylibPath(),
    int.parse(dotenv.env['TORREST_PORT'] ?? '15666'),
    dotenv.env['TORREST_SETTINGS_PATH'] ??
        join(baseDir.path, 'torrest_settings.json'),
  );

  torrest.start();

  return torrest;
}
