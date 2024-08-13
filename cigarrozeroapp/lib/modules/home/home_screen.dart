import 'package:flutter/material.dart';

import '../../app_colors.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              Stack(
                children: [
                  Positioned(
                    right: 45,
                    height: screenSize.height * 0.42,
                    child: Image.asset(
                      "assets/images/bg-orange.png",
                      alignment: Alignment.center,
                      fit: BoxFit.fitWidth,
                      width: 318,
                      height: 140,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.13,
                      ),
                      Image.asset(
                        "assets/images/illustration.png",
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(Icons.error),
                          );
                        },
                        fit: BoxFit.fitWidth,
                        width: 249,
                        height: 84,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.125,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: screenSize.height * 0.53,
                          width: screenSize.width,
                          decoration: const BoxDecoration(
                            color: AppColors.secondary,
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
                              style: theme.textTheme.headlineMedium,
                            ),
                            Text(
                              "Celebre cada nova vitória!",
                              style: theme.textTheme.bodyLarge,
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
                              style: theme.textTheme.headlineLarge,
                            ),
                            Text(
                              "dias sem fumar",
                              style: theme.textTheme.titleSmall,
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
                                  color: AppColors.secondaryLight,
                                  width: 1,
                                ),
                                color: AppColors.accent,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.shadow.withOpacity(0.12),
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
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
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
            ],
          ),
        ],
      ),
    );
  }
}

class AchievementCardContainer extends StatelessWidget {
  AchievementCardContainer({
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      width: mediaQuery.width * 0.7,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE0E6EE), width: 1),
        color: const Color(0xFFFCFCFC),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.12),
            offset: const Offset(-2, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}

class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Card(
        shape: theme.cardTheme.shape,
        color: theme.cardTheme.color,
        child: Container(
          width: 141.73,
          height: 160.03,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.84),
            color: theme.cardTheme.color,
            boxShadow: [
              BoxShadow(
                color: theme.cardTheme.shadowColor!,
                offset: const Offset(-2.21, 2.21),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 124,
              height: 130,
              child: Column(
                children: [
                  Container(
                    width: 124,
                    height: 70,
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
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Após 20 min",
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary400,
                          height: 1.2,
                          fontSize: 9.9,
                        ),
                      ),
                      Image.asset(
                        "assets/images/trophy.png",
                        width: 15.5,
                        height: 14.5,
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Sua pressão arterial e frequência cardíaca diminuem",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: AppColors.primary500,
                      height: 1.15,
                      fontSize: 8.86,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
