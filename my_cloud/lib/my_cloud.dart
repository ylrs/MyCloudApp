import 'dart:async';

import 'package:flutter/services.dart';

class MyCloud {
  static const MethodChannel _channel = MethodChannel('my_cloud');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
