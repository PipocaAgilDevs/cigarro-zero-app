import 'package:flutter/material.dart';

import 'widgets/container_section.dart';
import 'widgets/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: HomeAppBar(),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //todo imagem de fundo
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.53,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE4ECF5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: CustomScrollView(
              slivers: [
                SliverList.list(
                  children: [
                    const Text(
                      'Olá, João',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.011,
                        color: Color(0xFF003169),
                      ),
                    ),
                    const Text(
                      "Celebre cada nova vitória!",
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: -0.011,
                        color: Color(0xFF00408C),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 60),
                        const Text(
                          "07",
                          style: TextStyle(
                            fontSize: 52,
                            letterSpacing: -0.011,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF00244E),
                          ),
                        ),
                        const Text(
                          "dias sem fumar",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: -0.011,
                            color: Color(0xFF003169),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 81,
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFFCFCFC),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xFF000000).withOpacity(0.12),
                                offset: const Offset(-2, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ContainerSection(
                                icon: Icons.celebration_outlined,
                                value: "140",
                                description: "cigarros evitados",
                              ),
                              ContainerSection(
                                icon: Icons.local_fire_department,
                                value: "R\$ 84",
                                description: "a mais no seu bolso",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Suas Conquistas",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.011,
                              color: Color(0xFF003169),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return const AchievementCard(); //todo tirar padding daqui
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AchievementCard extends StatelessWidget {
  //todo move to another file
  const AchievementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13.84),
        side: const BorderSide(
            color: Color(0xFF0050AF), //todo primary 200
            width: 1.11),
      ),
      color: const Color(0xFFFDFDFD),
      child: Container(
        width: 141.73,
        height: 156.03,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.84),
          color: const Color(0xFFFDFDFD),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.12),
              offset: const Offset(-2.21, 2.21),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                width: 124,
                height: 71.97,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                    color: const Color(0xFF8AADD8), //todo cor  não definida
                    width: 0.83,
                  ),
                ),
                child: const SizedBox(height: 20 //todo image
                    ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Após 20 min",
                    style: TextStyle(
                      fontSize: 9.97,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF003169), //todo primary 400
                      height: 1.3,
                      letterSpacing: 0.011,
                    ),
                  ),
                  Icon(
                    Icons.wine_bar, //todo replace
                    color: Color(0xFF0050AF),
                  ),
                ],
              ),
              const Text(
                "Sua pressão arterial e frequência cardíaca diminuem",
                style: TextStyle(
                  fontSize: 8.86,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF001C3E), //todo primary 500
                  height: 1.3,
                  letterSpacing: 0.011,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
