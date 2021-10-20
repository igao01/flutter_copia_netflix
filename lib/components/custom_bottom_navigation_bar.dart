import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      onTap: (index) {},
      unselectedItemColor: Colors.grey[600],
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.video_collection),
          icon: Icon(Icons.video_collection_outlined),
          label: 'Em breve',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_circle_down_sharp),
          label: 'Downloads',
        ),
      ],
    );
  }
}
