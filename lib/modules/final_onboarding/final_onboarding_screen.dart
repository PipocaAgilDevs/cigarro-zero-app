import 'package:cigarrozeroapp/design_system/onboarding/onboarding_button.dart';
import 'package:flutter/material.dart';

import '../../design_system/onboarding/back_button.dart';

class FinalOnboardingScreen extends StatelessWidget {
  const FinalOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.centerLeft,
                child: IOSBackButton(),
              ),
              const SizedBox(height: 95),
              Image.asset(
                'assets/images/onboarding_nine.png',
                width: 280,
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(height: 36),
              Text(
                'Parabéns!',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                "Sua nova jornada para uma vida mais saudável começa agora",
                style: theme.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 188),
              OnboardingButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                text: 'Iniciar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
