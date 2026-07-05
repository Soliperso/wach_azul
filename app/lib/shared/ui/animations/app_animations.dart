import 'package:flutter/widgets.dart';

class AppAnimations {
  const AppAnimations._();

  static const fast = Duration(milliseconds: 180);
  static const normal = Duration(milliseconds: 250);
  static const celebratory = Duration(milliseconds: 500);

  static const Curve playfulCurve = Curves.easeOutBack;
  static const Curve gentleCurve = Curves.easeOutCubic;
}
