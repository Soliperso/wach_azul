import 'package:flutter/material.dart';

class AppTypography {
  const AppTypography._();

  static TextStyle? strong(TextStyle? style) {
    return style?.copyWith(fontWeight: FontWeight.w900);
  }

  static TextStyle? supporting(TextStyle? style) {
    return style?.copyWith(color: Colors.black54, fontWeight: FontWeight.w700);
  }
}
