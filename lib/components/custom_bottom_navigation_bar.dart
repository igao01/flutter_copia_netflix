import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      onTap: (index) {
        if (index == 1) {
          Navigator.of(context).pushNamed(AppRoutes.emBreve);
        } else if (index == 2) {
          Navigator.of(context).pushNamed(AppRoutes.downloads);
        } else {
          Navigator.of(context).pushNamed(AppRoutes.home);
        }
      },
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
