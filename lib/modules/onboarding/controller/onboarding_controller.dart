import 'package:cigarrozeroapp/modules/onboarding/data_source/local_data_source.dart';
import 'package:flutter/material.dart';

class OnboardingController extends ChangeNotifier {
  final LocalDataSource localDataSource;

  OnboardingController({required this.localDataSource});

  void saveData(Map<String, String> answers) {
    localDataSource.saveData(answers);
  }
}
