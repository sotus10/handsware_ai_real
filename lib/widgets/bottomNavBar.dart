import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Nosotros',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Aprender',
        ),

        /// Botón central llamativo
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(12),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          label: '',
        ),

        const BottomNavigationBarItem(
          icon: Icon(Icons.extension),
          label: 'Otro',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Ajustes',
        ),
      ],
    );
  }
}
