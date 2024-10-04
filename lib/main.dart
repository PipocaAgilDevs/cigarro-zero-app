import 'package:flutter/material.dart';

import 'modules/home/home_screen.dart';
import 'modules/onboarding/onboarding_screen.dart';
import 'modules/splash/splash_screen.dart';
import 'modules/final_onboarding/final_onboarding_screen.dart';

import 'theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cigarro Zero',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),
        '/final_onboarding': (context) => const FinalOnboardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/': (context) => const SplashScreen(),
      },
      initialRoute: '/',
    );
  }
}
