import 'package:flutter/material.dart';

class ContainerSection extends StatelessWidget {
  final IconData icon;
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
        Row(
          children: [
            Icon(
              icon,
              size: 22,
              color: const Color(0xFF003D83),
            ),
            const SizedBox(width: 8),
            Text(
              value,
              style: const TextStyle(
                fontSize: 24,
                height: 1.3,
                letterSpacing: -0.011,
                fontWeight: FontWeight.w700,
                color: Color(0xFF00408C),
              ),
            ),
          ],
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.3,
            letterSpacing: -0.011,
            color: Color(0xFF00489D),
          ),
        ),
      ],
    );
  }
}
