import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItemWithImage("assets/images/books.png", "Conteúdos"),
          _buildNavItemWithImage("assets/images/logo.png", "Painel"),
          _buildNavItemWithImage("assets/images/heartbeat.png", "Apoio"),
        ],
      ),
    );
  }

  Widget _buildNavItemWithImage(String imagePath, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 24,
          width: 24,
        ),
        SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
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
