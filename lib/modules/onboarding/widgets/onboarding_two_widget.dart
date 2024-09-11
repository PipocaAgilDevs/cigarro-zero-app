import 'package:flutter/material.dart';

import '../../../design_system/onboarding/background.dart';
import '../../../design_system/onboarding/text_themes.dart';

class OnboardingTwoWidget extends StatelessWidget {
  const OnboardingTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Background(
      child: Column(
        children: [
          const SizedBox(height: 82),
          Text(
            'COMECE UMA VIDA',
            style: OnboardingDesignSystem.title,
          ),
          const SizedBox(height: 12),
          Text.rich(
            TextSpan(
              text: 'SAUDÁVEL E ',
              style: theme.textTheme.headlineLarge?.copyWith(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'SEM CIGARRO',
                  style: theme.textTheme.headlineLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: 34),
          Text(
            "Sabemos que essa jornada pode ser desafiadora, mas você não está sozinho.",
            style: theme.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            "Nossa missão é fornecer informações valiosas e recursos de apoio para todos que desejam parar de fumar.",
            style: theme.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 41),
          Image.asset(
            'assets/images/image_onboarding_two.png',
            width: 308,
          ),
        ],
      ),
    );
  }
}
