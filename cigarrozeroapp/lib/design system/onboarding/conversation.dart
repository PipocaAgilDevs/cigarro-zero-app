import 'package:flutter/material.dart';

import '../../app_colors.dart';

class ConversationWidget extends StatelessWidget {
  final bool isAvatarResponse;
  final bool isBottomLeftBorderRounded;
  final bool isBottomRightBorderRounded;
  final bool isTopRightBorderRounded;
  final String text;

  const ConversationWidget({
    super.key,
    this.isAvatarResponse = true,
    this.isBottomLeftBorderRounded = true,
    this.isBottomRightBorderRounded = true,
    this.isTopRightBorderRounded = true,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 15), //todo conferir
      width: 255,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.whiteShade50,
        border: Border.all(
          color:
              isAvatarResponse ? AppColors.primary150 : AppColors.secondary150,
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
        style: const TextStyle(
          color: AppColors
              .primary400, //todo condicional if is avatar ? cinza : black
          fontSize: 16, //todo editar estilo
        ),
      ),
    );
  }
}
