import 'package:cigarrozeroapp/design_system/onboarding/background.dart';
import 'package:flutter/material.dart';

import 'avatar_widget.dart';
import 'back_button.dart';
import 'conversation.dart';
import 'custom_dot_indicator.dart';
import 'onboarding_button.dart';

class DesignSystemScreen extends StatelessWidget {
  const DesignSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const IOSBackButton(),
              const ConversationWidget(
                isAvatarQuestion: false,
                isBottomLeftBorderRounded: false,
                text: 'Olá, eu sou o Zero! Vamos começar?',
              ),
              const SizedBox(height: 30),
              const AvatarWidget(),
              const SizedBox(height: 300),
              OnboardingButton(onPressed: () {}),
              const SizedBox(height: 20),
              const CustomDotIndicator(),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
