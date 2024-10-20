import 'package:flutter/material.dart';

import '../../../app_colors.dart';
import '../content/content_screen.dart';
import 'home_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    ContentsPage(),
    const HomeScreen(),
    ApoioPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          color: AppColors.primary250,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          height: 16 / 12,
          letterSpacing: 0.03999999910593033,
        ),
        unselectedLabelStyle: const TextStyle(
          color: AppColors.greyShade500,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 16 / 12,
          letterSpacing: 0.03999999910593033,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/books.png")),
            label: 'Conteúdos',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/logo.png")),
            label: 'Painel',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/heartbeat.png")),
            label: 'Apoio',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary250,
        unselectedItemColor: AppColors.greyShade500,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ConteudosPage extends StatelessWidget {
  const ConteudosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conteúdos')),
      body: const Center(child: Text('Conteúdos Page')),
    );
  }
}

class ApoioPage extends StatelessWidget {
  const ApoioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apoio')),
      body: const Center(child: Text('Apoio Page')),
    );
  }
}

//todo background color
//todo indicator over icon
