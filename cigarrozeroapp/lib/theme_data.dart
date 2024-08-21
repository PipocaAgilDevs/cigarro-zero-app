import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary400,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    displayLarge:

        ///h1
        const TextStyle(
      fontSize: 52,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.011,
      color: AppColors.primary450,
    ).fontHeight(62.4),
    // displayMedium: ///h2,
    // displaySmall: ///h3,
    headlineLarge: const TextStyle(
      ///done
      ///h4
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.011,
      color: AppColors.primary200,
    ).fontHeight(33.6),
    headlineMedium: const TextStyle(
      ///h5
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.011,
    ).fontHeight(28.8),
    headlineSmall: const TextStyle(
      ///h6
      fontSize: 21,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.011,
    ).fontHeight(31.5),
    titleLarge: const TextStyle(
      ///done
      ///subtitle large
      fontSize: 24,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.011,
    ).fontHeight(36),
    titleMedium: const TextStyle(
      ///subtitle
      fontSize: 18,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.011,
    ),
    titleSmall: const TextStyle(
      ///done
      ///subtitle small
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.011,
    ).fontHeight(22.4),
    bodyLarge: const TextStyle(
      fontSize: 14,
      letterSpacing: -0.011,
    ),
    bodyMedium: const TextStyle(
      fontSize: 9.97,
      fontWeight: FontWeight.w700,
      color: AppColors.primary400,
      height: 1.3,
      letterSpacing: 0.011,
    ),
    bodySmall: const TextStyle(
      ///done
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.primary350,
      letterSpacing: 0.011,
    ).fontHeight(19.6),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFE4ECF5),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Color(0xFFAFC7E5),
        width: 1,
      ),
    ),
  ),
  useMaterial3: true,
  cardTheme: CardTheme(
    color: AppColors.primary200,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(13.84),
      side: const BorderSide(
        color: AppColors.primary200,
        width: 1.11,
      ),
    ),
  ),
);

/// An extension for easily setting the font height for a [TextStyle]
extension FontHeightExtension on TextStyle {
  /// Returns a copy of the [TextStyle] with the calculated font height.
  ///
  /// The value is calculated by dividing the [TextStyle] fontSize and the
  /// passed height value expressed in logica pixels (can be found in Figma).
  ///
  /// Example:
  ///   - fontSize: 32
  ///   - passed height: 36
  ///
  ///   return copyWith(height: 36/32);
  ///
  TextStyle fontHeight(double height) =>
      fontSize == null ? this : copyWith(height: height / fontSize!);
}
