import 'dart:io';
import 'package:flutter/foundation.dart';

class PlatformType {
  static const String android = 'android';
  static const String ios = 'ios';
  static const String web = 'web';

  static String getPlatformType() {
    if (kIsWeb) {
      return web;
    } else if (Platform.isAndroid) {
      return android;
    } else if (Platform.isIOS) {
      return ios;
    } else {
      return 'unknown';
    }
  }
}
