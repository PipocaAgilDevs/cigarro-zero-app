import 'package:flutter/material.dart';

import '../../../app_colors.dart';
import '../../../design_system/onboarding/avatar_widget.dart';
import '../../../design_system/onboarding/conversation.dart';

class TextQuestionWidget extends StatelessWidget {
  final String questionText;
  final TextEditingController controller;
  final TextInputType inputType;
  final Function(String) onChanged;

  const TextQuestionWidget({
    super.key,
    required this.questionText,
    required this.controller,
    this.inputType = TextInputType.number,
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
            child: AvatarWidget(isAvatar: false),
          ),
          const SizedBox(height: 46),
          Align(
            alignment: Alignment.centerLeft,
            child: ConversationWidget(
              text: 'Digite sua resposta aqui',
              isAvatarQuestion: true,
              child: SizedBox(
                height: 24,
                child: TextField(
                  controller: controller,
                  keyboardType: inputType,
                  textAlign: TextAlign.center,
                  onChanged: (value) => onChanged(value),
                  onTapOutside: (_) => FocusScope.of(context).unfocus(),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: false,
                    hintText: 'Digite sua resposta aqui',
                    hintStyle: TextStyle(
                      color: AppColors.whiteShade450,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
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
