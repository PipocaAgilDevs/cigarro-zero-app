import 'package:flutter/material.dart';

import '../../app_colors.dart';
import '../../theme_data.dart';

class ConversationWidget extends StatelessWidget {
  final bool isAvatarQuestion;
  final bool isBottomLeftBorderRounded;
  final bool isBottomRightBorderRounded;
  final bool isTopRightBorderRounded;
  final String text;

  const ConversationWidget({
    super.key,
    this.isAvatarQuestion = true,
    this.isBottomLeftBorderRounded = true,
    this.isBottomRightBorderRounded = true,
    this.isTopRightBorderRounded = true,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: 255,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.whiteShade50,
        border: Border.all(
          color:
              isAvatarQuestion ? AppColors.primary150 : AppColors.secondary150,
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(12),
          topRight:
              isTopRightBorderRounded ? const Radius.circular(12) : Radius.zero,
          bottomRight: isBottomRightBorderRounded
              ? const Radius.circular(12)
              : Radius.zero,
          bottomLeft: isBottomLeftBorderRounded
              ? const Radius.circular(12)
              : Radius.zero,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isAvatarQuestion
              ? AppColors.whiteShade450
              : AppColors.greyShade500,
          fontSize: 14,
          letterSpacing: 0.011,
          fontWeight: FontWeight.w400,
        ).fontHeight(19.6),
      ),
    );
  }
}
