import 'package:flutter/material.dart';

import '../../../design_system/onboarding/back_button.dart';
import '../../../design_system/onboarding/background.dart';
import '../../../design_system/onboarding/text_themes.dart';

class OnboardingTwoWidget extends StatelessWidget {
  final VoidCallback onBackButtonPressed;

  const OnboardingTwoWidget({
    super.key,
    required this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: IOSBackButton(
              onPressed: () {
                onBackButtonPressed();
              },
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'VAMOS NOS CONHECER MELHOR!',
            textAlign: TextAlign.center,
            style: OnboardingDesignSystem.title,
          ),
          const SizedBox(height: 32),
          Text(
            "Respondendo a seis perguntas rápidas, podemos saber mais sobre você e personalizar sua experiência no aplicativo!",
            style: theme.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 93),
          Image.asset(
            'assets/images/image_onboarding_two.png',
            width: 280,
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(height: 65),
        ],
      ),
    );
  }
}
