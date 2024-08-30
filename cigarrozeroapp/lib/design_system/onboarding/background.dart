import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;

  const Background({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFB0C9E7),
            Color(0xFFB7CCE7),
            Color(0xFFFEFEFE),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.15, 0.36, 1],
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: child,
      ),
    );
  }
}
