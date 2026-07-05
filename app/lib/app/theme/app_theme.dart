import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/ui/theme/app_colors.dart';
import '../../shared/ui/theme/app_radius.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.skyBlue,
      brightness: Brightness.light,
    );
    final baseTheme = ThemeData(useMaterial3: true, colorScheme: colorScheme);

    return baseTheme.copyWith(
      scaffoldBackgroundColor: AppColors.sunCream,
      textTheme: GoogleFonts.nunitoTextTheme(baseTheme.textTheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.deepBlue,
          foregroundColor: Colors.white,
          minimumSize: const Size(190, 52),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
