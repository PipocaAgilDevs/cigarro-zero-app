import 'package:flutter/material.dart';

import '../../theme_data.dart';
import 'design_system_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cigarro Zero - onboarding design system',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      home: const DesignSystemScreen(),
    );
  }
}
