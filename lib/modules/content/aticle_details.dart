import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entendendo o Tabagismo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem e Título Principal
            Center(
              child: Image.asset(
                'assets/images/no_smoking.png', // Substitua pela sua imagem
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            // Seção: Autor e Data
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/author.png'),
                  radius: 20,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Autor: João Silva',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Publicado em 5 de Outubro de 2024'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Seção: Corpo do Artigo
            const Text(
              'O tabagismo é um dos maiores problemas de saúde pública no mundo. Entenda mais sobre como o cigarro afeta sua saúde e o que pode ser feito para superar o vício.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),

            const Text(
              'Sintomas do Tabagismo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'O vício em cigarro pode causar uma série de problemas à saúde, incluindo doenças respiratórias, cardiovasculares e cânceres diversos. Veja abaixo alguns dos sintomas mais comuns entre fumantes:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),

            // Lista com pontos de interesse
            const BulletList([
              'Tosse crônica e falta de ar',
              'Pressão alta e taquicardia',
              'Redução da capacidade pulmonar',
              'Aumento do risco de infartos',
              'Diversos tipos de câncer, especialmente de pulmão, boca e garganta',
            ]),
            const SizedBox(height: 16),

            const Text(
              'Benefícios de Parar de Fumar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Ao parar de fumar, os benefícios para a saúde são quase imediatos. Em apenas 20 minutos, a pressão arterial e a frequência cardíaca começam a normalizar.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),

            // Mais parágrafos
            const Text(
              'Em 72 horas, a respiração melhora significativamente, e em 1 ano, o risco de doenças cardíacas já é reduzido pela metade. Esses benefícios se tornam ainda maiores com o tempo, melhorando a qualidade de vida e aumentando a expectativa de vida.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),

            const Text(
              'Por que as pessoas começam a fumar?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Inúmeros fatores influenciam uma pessoa a começar a fumar, incluindo pressão social, estresse e influência da mídia. Muitas vezes, o vício começa ainda na adolescência, quando as propagandas e influências sociais são mais impactantes.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),

            const Text(
              'Como obter ajuda?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Se você ou alguém que você conhece deseja parar de fumar, procure ajuda profissional. Existem inúmeros recursos disponíveis, desde terapias de reposição de nicotina até suporte psicológico para lidar com os efeitos do vício.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// Widget para listar os pontos com bullets
class BulletList extends StatelessWidget {
  final List<String> items;

  const BulletList(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '• ',
                  style: TextStyle(fontSize: 16),
                ),
                Expanded(
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
