import 'package:cigarrozeroapp/design%20system/onboarding/onboarding_button.dart';
import 'package:flutter/material.dart';

import 'custom_dot_indicator.dart';

class DesignSystemScreen extends StatelessWidget {
  const DesignSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFB0C9E7),
              Color(0xFFB7CCE7),
              Color(0xFFFEFEFE),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.15, 0.36, 1],
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 500),
                OnboardingButton(onPressed: () {}),
                SizedBox(height: 20),
                const CustomDotIndicator(),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
