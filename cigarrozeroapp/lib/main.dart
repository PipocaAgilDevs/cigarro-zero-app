import 'package:cigarrozeroapp/theme_data.dart';
import 'package:flutter/material.dart';

import 'design system/onboarding/design_system_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      home: const DesignSystemScreen(),
    );
  }
}
