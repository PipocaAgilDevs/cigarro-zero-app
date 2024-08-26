import 'package:flutter/material.dart';
import '../../../app_colors.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(right: 26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItemWithImage(
                imagePath: "assets/images/books.png", label: "Conteúdos"),
            NavItemWithImage(
                imagePath: "assets/images/logo.png", label: "Painel"),
            NavItemWithImage(
                imagePath: "assets/images/heartbeat.png", label: "Apoio"),
          ],
        ),
      ),
    );
  }
}

class NavItemWithImage extends StatelessWidget {
  final String imagePath;
  final String label;

  const NavItemWithImage({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          color: AppColors.greyShades500,
          imagePath,
          height: 24,
          width: 24,
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.error);
          },
        ),
        SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: AppColors.greyShades500,
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            height: 16 / 12,
            letterSpacing: 0.03999999910593033,
          ),
        ),
      ],
    );
  }
}
