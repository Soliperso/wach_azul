import 'package:flutter/services.dart';

class AppHaptics {
  const AppHaptics._();

  static Future<void> tap() => HapticFeedback.selectionClick();

  static Future<void> success() => HapticFeedback.lightImpact();

  static Future<void> reward() => HapticFeedback.mediumImpact();
}
