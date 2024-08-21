import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final void Function() onPressed;

  const OnboardingButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text(
        'Continuar',
      ),
    );
  }
}
