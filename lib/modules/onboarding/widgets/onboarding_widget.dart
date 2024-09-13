import 'package:flutter/material.dart';

import '../../../design_system/onboarding/background.dart';
import '../../../design_system/onboarding/text_themes.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 100),
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
          Flexible(
            child: Image.asset(
              'assets/images/image_onboarding_one.png',
              fit: BoxFit.scaleDown,
              width: 308,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
