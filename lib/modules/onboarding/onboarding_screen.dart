import 'package:flutter/material.dart';

import '../../app_colors.dart';
import '../../design_system/onboarding/custom_dot_indicator.dart';
import '../../design_system/onboarding/onboarding_button.dart';
import 'widgets/onboarding_two_widget.dart';
import 'widgets/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteShade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 728,
              child: PageView(
                scrollBehavior: const MaterialScrollBehavior(),
                physics: const PageScrollPhysics(),
                pageSnapping: false,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  const OnboardingWidget(),
                  OnboardingTwoWidget(
                    onBackButtonPressed: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            OnboardingButton(
              onPressed: () {
                if (_currentPage == 1) {
                  Navigator.pushReplacementNamed(context, '/onboarding_three');
                }

                if (_currentPage == 7) {
                  Navigator.pushReplacementNamed(context, '/final_onboarding');
                }

                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            const SizedBox(height: 20),
            CustomDotIndicator(
              currentIndex: _currentPage,
              onTap: (int position) {
                setState(() {
                  _currentPage = position;
                  _pageController.animateToPage(
                    _currentPage,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
