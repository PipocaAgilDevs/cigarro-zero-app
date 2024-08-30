import 'package:flutter/material.dart';

import 'design_system/onboarding/design_system_screen.dart';
import 'theme_data.dart';

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
