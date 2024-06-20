import 'package:flutter/material.dart';

class CustomNavigatorbar extends StatelessWidget {
  const CustomNavigatorbar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = 0;
    // se reuqiere mas de un BottomNavigationBarItem de manera obligatoria
    return BottomNavigationBar(
      currentIndex: currentIndex,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direcciones',
        ),
      ],
    );
  }
}
