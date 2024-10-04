import 'package:cigarrozeroapp/theme_data.dart';
import 'package:flutter/material.dart';

import '../../../app_colors.dart';
import '../../../design_system/onboarding/avatar_widget.dart';
import '../../../design_system/onboarding/conversation.dart';

class DateQuestionWidget extends StatelessWidget {
  final TextEditingController dateController;
  final String questionText;
  final Function(String) onChanged;

  const DateQuestionWidget({
    super.key,
    required this.dateController,
    required this.questionText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ConversationWidget(
              text: questionText,
              isAvatarQuestion: false,
              isBottomLeftBorderRounded: false,
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                AvatarWidget(
                  isAvatar: false,
                ),
              ],
            ),
          ),
          const SizedBox(height: 46),
          Align(
            alignment: Alignment.centerLeft,
            child: ConversationWidget(
              text: 'Digite sua resposta aqui',
              isBottomRightBorderRounded: false,
              isAvatarQuestion: true,
              child: SizedBox(
                height: 24,
                child: TextField(
                  controller: dateController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: false,
                    hintText: 'Digite sua resposta aqui',
                    hintStyle: const TextStyle(
                      color: AppColors.whiteShade450,
                      fontSize: 14,
                      letterSpacing: 0.011,
                      fontWeight: FontWeight.w400,
                    ).fontHeight(19.6),
                  ),
                  onChanged: (value) => onChanged(value),
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: AvatarWidget(),
          ),
        ],
      ),
    );
  }
}
