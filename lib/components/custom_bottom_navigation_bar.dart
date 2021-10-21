import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) selectedPage;
  const CustomBottomNavigationBar(this.selectedIndex, this.selectedPage,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      onTap: (index) => selectedPage(index),
      unselectedItemColor: Colors.grey[600],
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      currentIndex: selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_collection_outlined),
          activeIcon: Icon(Icons.video_collection),
          label: 'Em breve',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_circle_down),
          activeIcon: Icon(Icons.arrow_circle_down),
          label: 'Downloads',
        ),
      ],
    );
  }
}
