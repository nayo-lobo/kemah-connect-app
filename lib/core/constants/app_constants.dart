import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

class AppConstants {
  // Android emulator can't reach the host's 127.0.0.1 directly; 10.0.2.2 is
  // the documented alias for the host loopback from inside the emulator.
  static String get baseUrl {
    if (!kIsWeb && Platform.isAndroid) return 'http://10.0.2.2:3000';
    return 'http://127.0.0.1:3000';
  }

  static const String tokenKey = 'auth_token';
  static const String userKey = 'auth_user';
  static const int connectTimeoutMs = 30000;
  static const int receiveTimeoutMs = 30000;
}
