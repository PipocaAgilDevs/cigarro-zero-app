import 'package:flutter/material.dart';

class IOSBackButton extends StatelessWidget {
  final Function()? onPressed;

  const IOSBackButton({this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      iconSize: 24,
      color: const Color(0xFF1C1C1C),
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        } else {
          Navigator.of(context).pop();
        }
      },
    );
  }
}
