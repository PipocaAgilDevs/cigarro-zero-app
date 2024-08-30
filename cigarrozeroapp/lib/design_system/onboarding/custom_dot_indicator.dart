import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';

class CustomDotIndicator extends StatefulWidget {
  const CustomDotIndicator({super.key});

  @override
  State<CustomDotIndicator> createState() => _CustomDotIndicatorState();
}

class _CustomDotIndicatorState extends State<CustomDotIndicator> {
  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82,
      height: 8,
      child: DotsIndicator(
        dotsCount: 8,
        position: _currentIndex,
        onTap: (position) {
          setState(() => _currentIndex = position);
        },
        decorator: const DotsDecorator(
          spacing: EdgeInsets.symmetric(horizontal: 2),
          size: Size.square(6),
          activeSize: Size.square(8),
          activeColor: AppColors.primary400,
          color: AppColors.whiteShade350,
        ),
      ),
    );
  }
}
