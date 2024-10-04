import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/final_onboarding/final_onboarding_screen.dart';
import 'modules/home/data_source/home_local_data_source.dart';
import 'modules/home/home_screen.dart';
import 'modules/onboarding/controller/onboarding_controller.dart';
import 'modules/onboarding/data_source/local_data_source.dart';
import 'modules/onboarding/onboarding_questions_screen.dart';
import 'modules/onboarding/onboarding_screen.dart';
import 'modules/splash/splash_screen.dart';
import 'shared/controller/user_data_controller.dart';
import 'shared/local_data_source.dart';
import 'theme_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final localStorage = await LocalStorageImplementation.create();

  final onboardingController = OnboardingController(
    localDataSource: LocalDataSourceImpl(localStorage),
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => OnboardingController(
            localDataSource: LocalDataSourceImpl(localStorage),
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => UserDataController(
            HomeLocalDataSourceImpl(localStorage),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
        '/onboarding_three': (context) => const OnboardingQuestionsScreen(),
        '/final_onboarding': (context) => const FinalOnboardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/': (context) => const SplashScreen(),
      },
      initialRoute: '/',
    );
  }
}
