import 'package:flutter/material.dart';

import 'modules/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF0050AF),
        hintColor: const Color(0xFFAFC7E5),
        scaffoldBackgroundColor: const Color(0xFFFDFDFD),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 52,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.011,
            color: Color(0xFF00244E),
          ),
          headlineMedium: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.011,
            color: Color(0xFF003169),
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.011,
            color: Color(0xFF00408C),
          ),
          bodyLarge: TextStyle(
            fontSize: 14,
            letterSpacing: -0.011,
            color: Color(0xFF003169),
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.011,
            color: Color(0xFF003169),
          ),
        ),
        cardTheme: CardTheme(
          color: const Color(0xFFFDFDFD),
          shadowColor: Colors.black.withOpacity(0.12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.84),
            side: const BorderSide(
              color: Color(0xFF0050AF),
              width: 1.11,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFFE4ECF5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Color(0xFFAFC7E5),
              width: 1,
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
