import 'package:flutter/foundation.dart';

class Logger {
  Logger._();

  static void log(String message, {String? tag}) {
    if (kDebugMode) {
      final timestamp = DateTime.now().toIso8601String();
      final tagStr = tag != null ? '[$tag] ' : '';
      print('[$timestamp] $tagStr$message');
    }
  }

  static void error(
    String message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      final timestamp = DateTime.now().toIso8601String();
      final tagStr = tag != null ? '[$tag] ' : '';
      print('[$timestamp] ERROR: $tagStr$message');
      if (error != null) print('Error: $error');
      if (stackTrace != null) print('StackTrace: $stackTrace');
    }
  }

  static void info(String message, {String? tag}) {
    log(message, tag: tag ?? 'INFO');
  }

  static void debug(String message, {String? tag}) {
    log(message, tag: tag ?? 'DEBUG');
  }

  static void warning(String message, {String? tag}) {
    log(message, tag: tag ?? 'WARNING');
  }
}
