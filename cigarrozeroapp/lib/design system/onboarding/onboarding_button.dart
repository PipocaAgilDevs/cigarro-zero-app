import 'package:cigarrozeroapp/theme_data.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';

class OnboardingButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const OnboardingButton({
    super.key,
    required this.onPressed,
    this.text = 'Continuar',

    ///por padrão é 'Continuar', caso não passe argumento
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 51,
      decoration: BoxDecoration(
        color: AppColors.primary200,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 3),
            blurRadius: 1,
            spreadRadius: -2,
          ),
          BoxShadow(
            color: Color(0x24000000),
            offset: Offset(0, 2),
            blurRadius: 2,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x1E000000),
            offset: Offset(0, 1),
            blurRadius: 5,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary200,
          fixedSize: const Size(164, 51),
          alignment: Alignment.center,
          maximumSize: const Size(164, 51),
          padding: const EdgeInsets.symmetric(
            horizontal: 38.5,
            vertical: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
                  color: AppColors.whiteShade50,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.011)
              .fontHeight(27),
        ),
      ),
    );
  }
}
