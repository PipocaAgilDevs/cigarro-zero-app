import 'package:cigarrozeroapp/theme_data.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';

class OnboardingDesignSystem {
  static TextStyle title = TextStyle(
    ///estlo de "COMECE UMA VIDA" e "VAMOS NOS CONHERCER MELHOR!"
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'Oswald',
    fontWeight: FontWeight.w500,
    letterSpacing: 0.011,
    shadows: [
      Shadow(
        color: Colors.black.withOpacity(0.12),
        offset: const Offset(0, 4),
        blurRadius: 8,
      ),
    ],
  ).fontHeight(28.8);

  static TextStyle bodyQuestions =

      ///estilo das perguntas
      const TextStyle(
    color: AppColors.greyShade500,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.011,
  ).fontHeight(19.6);

  static TextStyle bodyAnswers =

      ///estilo das respostas
      const TextStyle(
    color: AppColors.whiteShade450,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.011,
  ).fontHeight(19.6);
}
