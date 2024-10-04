import 'package:flutter/material.dart';

import '../../../design_system/onboarding/avatar_widget.dart';
import '../../../design_system/onboarding/conversation.dart';

class OnboardingFourWidget extends StatefulWidget {
  final Function(String) onSelectionChanged;

  const OnboardingFourWidget({
    super.key,
    required this.onSelectionChanged,
  });

  @override
  State<OnboardingFourWidget> createState() => _OnboardingFourWidgetState();
}

class _OnboardingFourWidgetState extends State<OnboardingFourWidget> {
  String selection = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: ConversationWidget(
              text: 'Você já parou de fumar?',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      widget.onSelectionChanged('SIM');
                      selection = 'SIM';
                      setState(() {});
                    },
                    child: ConversationWidget(
                      text: 'SIM',
                      isBottomRightBorderRounded: false,
                      isAvatarQuestion: selection != 'SIM',
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      widget.onSelectionChanged('NÃO');
                      selection = 'NÃO';
                      setState(() {});
                    },
                    child: ConversationWidget(
                      text: 'NÃO',
                      isTopRightBorderRounded: false,
                      isAvatarQuestion: selection != 'NÃO',
                    ),
                  ),
                ],
              ),
              const AvatarWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
