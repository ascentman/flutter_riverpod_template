import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class Log {
  static const String _name = 'Logger';
  static late Logger _instance;

  static Future<void> init() async {
    Logger.root.onRecord.listen((record) {
      debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    });
    _instance = Logger(_name);
  }

  // ignore: use_setters_to_change_properties
  static void setLevel(Level level) {
    Logger.root.level = level;
  }

  static void info(
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _instance.info(message, error, stackTrace);
  }

  static void warning(
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _instance.warning(message, error, stackTrace);
  }

  static void severe(
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _instance.severe(message, error, stackTrace);
  }
}
