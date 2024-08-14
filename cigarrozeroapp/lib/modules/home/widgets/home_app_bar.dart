import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: SizedBox(
        width: double.infinity,
        height: kToolbarHeight,
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Cigarro Zero",
                      style: TextStyle(
                        color: Color(0xFF101828),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oswald',
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "Meu Progresso",
                      style: TextStyle(
                        color: Color(0xFF475467).withOpacity(0.6),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: IconButton(
                icon: const Icon(Icons.more_vert),
                color: const Color(0xFF000000),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
