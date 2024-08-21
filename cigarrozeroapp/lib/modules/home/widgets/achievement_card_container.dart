import 'package:flutter/material.dart';

import '../../../app_colors.dart';
import 'container_section.dart';

class AchievementCardContainer extends StatelessWidget {
  const AchievementCardContainer({
    super.key,
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      width: mediaQuery.width * 0.7,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFE0E6EE),
          width: 1,
        ),
        color: AppColors.whiteShade50,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.12),
            offset: const Offset(-2, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ContainerSection(
            icon: "confetti",
            value: "140",
            description: "cigarros evitados",
          ),
          ContainerSection(
            icon: "coins",
            value: "R\$ 84",
            description: "a mais no seu bolso",
          ),
        ],
      ),
    );
  }
}
