import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class ContainerSection extends StatelessWidget {
  final String icon;
  final String value;
  final String description;

  const ContainerSection({
    super.key,
    required this.icon,
    required this.value,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 125,
          height: 29,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$icon.png',
                  width: 22,
                  height: 22,
                  color: AppColors.primary250,
                ),
                const SizedBox(width: 8),
                Text(
                  value,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    fontSize: 24,
                    height: 1.3,
                    letterSpacing: -0.011,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary250,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.3,
            letterSpacing: -0.011,
            color: AppColors.primary250,
          ),
        ),
      ],
    );
  }
}
