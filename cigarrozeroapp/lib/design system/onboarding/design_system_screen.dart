import 'package:cigarrozeroapp/design%20system/onboarding/onboarding_button.dart';
import 'package:flutter/material.dart';

import 'avatar_widget.dart';
import 'conversation.dart';
import 'custom_dot_indicator.dart';

class DesignSystemScreen extends StatelessWidget {
  const DesignSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFB0C9E7),
              Color(0xFFB7CCE7),
              Color(0xFFFEFEFE),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.15, 0.36, 1],
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const AvatarWidget(),
                const ConversationWidget(
                  isAvatarResponse: false,
                  isBottomLeftBorderRounded: false,
                  text: 'Olá, eu sou o Zero! Vamos começar?',
                ),
                const SizedBox(height: 500),
                OnboardingButton(onPressed: () {}),
                const SizedBox(height: 20),
                const CustomDotIndicator(),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
