import 'dart:developer';

// Logger class for handling debug logging
class Logger {
  static LogMode _logMode = LogMode.debug; // Default log mode is debug

  // Method to initialize logger with a specific mode
  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  // Method for logging data based on current log mode
  static void lOG(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
      if (stackTrace == null) {
        log("$data");
      } else {
        log("$data$stackTrace");
      }
    }
  }
}

// Enum to define logging modes
enum LogMode { debug, live }
