import 'package:cigarrozeroapp/design_system/onboarding/background.dart';
import 'package:flutter/material.dart';

import 'avatar_widget.dart';
import 'back_button.dart';
import 'conversation.dart';
import 'custom_dot_indicator.dart';
import 'onboarding_button.dart';

class DesignSystemScreen extends StatefulWidget {
  const DesignSystemScreen({super.key});

  @override
  State<DesignSystemScreen> createState() => _DesignSystemScreenState();
}

class _DesignSystemScreenState extends State<DesignSystemScreen> {
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
              CustomDotIndicator(
                currentIndex: 1,
                onTap: (int position) {},
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
