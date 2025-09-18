import 'package:flutter/material.dart';
import 'package:handsware_ai/widgets/bottomNavBar.dart'; // importa tu widget

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [ 
    const Center(child: Text('Página Sobre Nosotros')),
    const Center(child: Text('Página Gamificación')),
    const Center(child: Text('APP Principal')),
    const Center(child: Text('Otra página')),
    const Center(child: Text('Ajustes')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
      ),
    );
  }
}
