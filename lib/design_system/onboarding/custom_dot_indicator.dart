import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';

class CustomDotIndicator extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomDotIndicator({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomDotIndicator> createState() => _CustomDotIndicatorState();
}

class _CustomDotIndicatorState extends State<CustomDotIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82,
      height: 8,
      child: DotsIndicator(
        dotsCount: 8,
        onTap: (position) => widget.onTap(position),
        position: widget.currentIndex,
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
