import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      centerTitle: true,
      title: const Column(
        children: [
          Text('Cigarro Zero'),
          Text(
            'Meu progresso',
          ),
        ],
      ),
    );
  }
}
