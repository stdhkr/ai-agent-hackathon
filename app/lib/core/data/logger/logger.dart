import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  level: kReleaseMode ? Level.error : Level.debug,
  printer: PrettyPrinter(
    methodCount: kReleaseMode ? 0 : 2,
    dateTimeFormat: kReleaseMode
        ? DateTimeFormat.none
        : DateTimeFormat.onlyTimeAndSinceStart,
  ),
);
