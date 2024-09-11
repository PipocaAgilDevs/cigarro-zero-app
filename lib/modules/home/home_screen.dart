import 'package:cigarrozeroapp/modules/home/widgets/navbar.dart';
import 'package:cigarrozeroapp/theme_data.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';
import 'widgets/achievement_card.dart';
import 'widgets/container_section.dart';
import 'widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: HomeAppBar(),
      ),
      // Adicione a Navbar aqui
      bottomNavigationBar: const Navbar(),
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.13,
                      ),
                      Image.asset(
                        "assets/images/background.png",
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(Icons.error),
                          );
                        },
                        fit: BoxFit.fitWidth,
                        width: 318,
                        height: 140,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.01,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: screenSize.height * 0.53,
                          width: screenSize.width,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE4ECF5),
                            border: Border(
                              top: BorderSide(
                                color: AppColors.primary150,
                                width: 1,
                              ),
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olá, João',
                              style: theme.textTheme.headlineSmall,
                            ),
                            Text(
                              "Celebre cada nova vitória!",
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(
                                    color: AppColors.primary300,
                                    letterSpacing: 0,
                                  )
                                  .fontHeight(19.6),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 60),
                            Text(
                              "07",
                              style: theme.textTheme.displayLarge,
                            ),
                            Text(
                              "dias sem fumar",
                              style:
                                  theme.textTheme.titleSmall?.fontHeight(19.2),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 77,
                              width: screenSize.width * 0.7,
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xFFE0E6EE),
                                  width: 1,
                                ),
                                color: AppColors.whiteShade50,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.12),
                                    offset: const Offset(-2, 4),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ContainerSection(
                                    icon: "confetti",
                                    value: "140",
                                    description: "cigarros evitados",
                                  ),
                                  ContainerSection(
                                    icon: "coins",
                                    value: "R\$ 84",
                                    description: "a mais no seu bolso",
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 32),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Suas Conquistas",
                                style: theme.textTheme.titleSmall
                                    ?.copyWith(fontWeight: FontWeight.w600)
                                    .fontHeight(19.2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 183,
                        width: screenSize.width,
                        child: ListView.builder(
                          itemCount: 6,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const AchievementCard();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Removemos a Navbar daqui
            ],
          ),
        ],
      ),
    );
  }
}
