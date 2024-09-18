import 'package:flutter/material.dart';

import '../../app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) Navigator.pushReplacementNamed(context, '/onboarding');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteShade50,
      body: Center(
        child: Image.asset(
          "assets/images/splash_logo.png",
          width: 146.6,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
