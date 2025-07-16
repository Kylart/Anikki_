import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path/path.dart';

void initHive() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const MethodChannel channel =
      MethodChannel('plugins.flutter.io/path_provider');

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
    return 'test/resources/others';
  });

  final subDir = kDebugMode || Platform.environment.containsKey('FLUTTER_TEST')
      ? join('anikki', 'test', 'storage', 'hive')
      : join('anikki', 'storage', 'hive');

  Hive.initFlutter(subDir);
}
