import 'package:cigarrozeroapp/theme_data.dart';
import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: 163,
        height: 183,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.84),
          border: Border.all(
            color: AppColors.primary200,
            width: 1,
          ),
          color: const Color(0xFFFDFDFD),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              offset: const Offset(-2.21, 2.21),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: SizedBox(
            width: 163,
            height: 183,
            child: Column(
              children: [
                Container(
                  width: 135,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: const Color(0xFF8AADD8),
                      width: 0.83,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: Image.asset(
                      "assets/images/img.png",
                      fit: BoxFit.fitHeight,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(Icons.error),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 64,
                  width: 135,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 17,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Após 20 min",
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppColors.primary400,
                                fontSize: 14,
                                letterSpacing: 0.011,
                              ).fontHeight(16.8),
                            ),
                            Image.asset(
                              "assets/images/trophy.png",
                              width: 16.87,
                              height: 17.33,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Sua pressão arterial e frequência cardíaca diminuem",
                        style: const TextStyle(
                          color: AppColors.primary500,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.011,
                        ).fontHeight(14.4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
