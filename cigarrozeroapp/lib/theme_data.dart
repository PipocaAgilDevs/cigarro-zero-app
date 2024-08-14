import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary400,
  scaffoldBackgroundColor: AppColors.background,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 52,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.011,
      color: AppColors.primary600,
    ),
    headlineMedium: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.011,
      color: AppColors.textPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.011,
      color: AppColors.textPrimary,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
      letterSpacing: -0.011,
      color: AppColors.textSecondary,
    ),
    bodyMedium: TextStyle(
      fontSize: 9.97,
      fontWeight: FontWeight.w700,
      color: AppColors.primary400,
      height: 1.3,
      letterSpacing: 0.011,
    ),
  ),
  cardTheme: CardTheme(
    color: AppColors.accent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(13.84),
      side: const BorderSide(
        color: AppColors.primary200,
        width: 1.11,
      ),
    ),
    shadowColor: AppColors.shadow.withOpacity(0.12),
  ),
);
