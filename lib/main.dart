import 'package:cigarrozeroapp/modules/content/content_screen.dart';
import 'package:flutter/material.dart';

import 'modules/content/aticle_details.dart';
import 'modules/final_onboarding/final_onboarding_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/onboarding/onboarding_screen.dart';
import 'modules/splash/splash_screen.dart';
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
        '/content': (context) => ContentsPage(),
        '/article_detail': (context) => const ArticleDetailPage(),
      },
      initialRoute: '/home',
    );
  }
}
