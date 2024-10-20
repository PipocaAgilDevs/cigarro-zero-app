import 'package:cigarrozeroapp/shared/presentation/cigarro_zero_app_bar.dart';
import 'package:cigarrozeroapp/theme_data.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';

class ContentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: CigarroZeroAppBar(subtitle: 'Informe-se'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: const Color(0xFFFDE5AF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.fromLTRB(25, 32, 23, 21),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 14, 15, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CONTEÚDOS INFORMATIVOS',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: -0.011,
                        color: AppColors.secondary300,
                      ).fontHeight(19.6),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 11),
                              Text(
                                'Conheça todos os benefícios de parar de fumar!',
                                style: textTheme.headlineSmall,
                              ),
                              const SizedBox(height: 8),
                              MaterialButton(
                                onPressed: () {
                                  //todo
                                },

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 30,
                                color: AppColors.primary200,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 4),
                                //todo falta elevation
                                child: Text(
                                  'Por onde começo?',
                                  style: const TextStyle(
                                    color: AppColors.whiteShade50,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    letterSpacing: -0.011,
                                  ).fontHeight(21),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 11),
                        Image.asset(
                          'assets/images/banner_content_page.png',
                          height: 136,
                          width: 136,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 23, 21),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Entenda sobre o Tabagismo',
                      style: textTheme.headlineLarge?.copyWith(
                        color: AppColors.primary400,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Uma seleção especial de conteúdos',
                    style: textTheme.titleSmall?.copyWith(
                      color: AppColors.whiteShade450,
                    ),
                  ),
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 25),
                  FilterButton(label: 'Riscos para a saúde'),
                  SizedBox(width: 8),
                  FilterButton(label: 'Recursos de apoio'),
                  SizedBox(width: 8),
                  FilterButton(label: 'Saúde Mental'),
                  SizedBox(width: 8),
                  FilterButton(label: 'Benefícios de parar'),
                  SizedBox(width: 25),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 40, 24, 34),
              child: Column(
                children: [
                  ContentCard(
                    imagePath: 'assets/images/first_article_image.png',
                    title: 'Entendendo o tabagismo',
                    description:
                        'O tabagismo é reconhecido como uma doença epidêmica que causa dependência física, psicológica e comportamental.',
                  ),
                  SizedBox(height: 16),
                  ContentCard(
                    imagePath: 'assets/images/second_article_image.png',
                    title:
                        'Impacto do Cigarro na Saúde: Doenças e Complicações',
                    description:
                        'O tabagismo é a causa de diversas doenças graves, incluindo problemas respiratórios, cardiovasculares e diferentes tipos de câncer.',
                  ),
                  SizedBox(height: 16),
                  ContentCard(
                    imagePath: 'assets/images/third_article_image.png',
                    title: 'Benefícios de Parar de Fumar',
                    description:
                        'Parar de fumar traz benefícios imediatos à saúde. Veja como sua vida pode melhorar após deixar o cigarro.',
                    isLast: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;

  const FilterButton({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {}, //todo
      //todo adicionar cor p quando é pressiondao
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFDFDFD),
        padding: const EdgeInsets.all(10),
        textStyle: const TextStyle(fontSize: 12),
        side: const BorderSide(
          color: AppColors.secondary300,
          width: 1,
        ),
      ),
      child: Text(label,
          style: const TextStyle(
            color: AppColors.secondary300,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.011,
            fontSize: 14,
          ).fontHeight(19.6)),
    );
  }
}

class ContentCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isLast;

  const ContentCard({
    required this.imagePath,
    required this.title,
    required this.description,
    this.isLast = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return GestureDetector(
      onTap: () {
        //todo ir p page do conteudo
        Navigator.pushNamed(context, '/article_detail');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              imagePath,
              height: 165,
              width: screenWidth * 0.95,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style:
                textTheme.headlineSmall?.copyWith(color: AppColors.primary400),
          ),
          const SizedBox(height: 2),
          Text(
            description,
            maxLines: 3,
            style: textTheme.bodySmall?.copyWith(
              color: AppColors.whiteShade400,
            ),
          ),
          if (!isLast)
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 28,
                horizontal: 22.5,
              ),
              child: Center(
                child: Divider(
                  color: AppColors.whiteShade250,
                  thickness: 1,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
