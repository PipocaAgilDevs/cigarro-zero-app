import 'package:cigarrozeroapp/design_system/onboarding/background.dart';
import 'package:flutter/material.dart';

import '../../design_system/onboarding/custom_dot_indicator.dart';
import '../../design_system/onboarding/onboarding_button.dart';
import '../../design_system/onboarding/text_themes.dart';

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
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 680,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  Background(
                    child: Column(
                      children: [
                        const SizedBox(height: 82),
                        Text(
                          'COMECE UMA VIDA',
                          style: OnboardingDesignSystem.title,
                        ),
                        const SizedBox(height: 12),
                        Text.rich(
                          TextSpan(
                            text: 'SAUDÁVEL E ',
                            style: theme.textTheme.headlineLarge?.copyWith(
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'SEM CIGARRO',
                                style: theme.textTheme.headlineLarge,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 34),
                        Text(
                          "Sabemos que essa jornada pode ser desafiadora, mas você não está sozinho.",
                          style: theme.textTheme.titleSmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Nossa missão é fornecer informações valiosas e recursos de apoio para todos que desejam parar de fumar.",
                          style: theme.textTheme.titleSmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const Center(child: Text('Page 2')),
                  const Center(child: Text('Page 3')),
                  const Center(child: Text('Page 4')),
                  const Center(child: Text('Page 5')),
                  const Center(child: Text('Page 6')),
                  const Center(child: Text('Page 7')),
                  const Center(child: Text('Page 8')),
                ],
              ),
            ),
            const SizedBox(height: 20),
            OnboardingButton(
              onPressed: () {
                if (_currentPage < 7) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
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
