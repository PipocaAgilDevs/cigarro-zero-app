import 'package:cigarrozeroapp/modules/home/home_screen.dart';
import 'package:flutter/material.dart';

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
      // home: const HomeScreen(),
      home: const HomeScreen(),
    );
  }
}
