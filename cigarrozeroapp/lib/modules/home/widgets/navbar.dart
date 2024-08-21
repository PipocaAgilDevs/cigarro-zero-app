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
          _buildNavItem(Icons.menu_book_outlined, "Conteúdos"),
          _buildNavItem(Icons.monitor_heart_outlined, "Painel"),
          _buildNavItem(Icons.favorite_border_outlined, "Apoio"),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 12), // Adjust font size as needed
        ),
      ],
    );
  }
}
