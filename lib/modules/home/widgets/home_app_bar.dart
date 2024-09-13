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
                    Text(
                      "Cigarro Zero",
                      style: GoogleFonts.oswald(
                        color: const Color(0xFF001C3E),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 22.4 / 16,
                        letterSpacing: -0.011,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      "Meu Progresso",
                      style: TextStyle(
                        color: Color(0xFF475467),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 18 / 12,
                      ),
                      textAlign: TextAlign.center,
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
