import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/custom_bottom_app_bar.dart';
import 'package:copia_netflix/pages/em_breve_page_content.dart';
import 'package:copia_netflix/pages/home_page_content.dart';
import 'package:copia_netflix/pages/downloads_page_content.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPage();
}

class _BottomNavigationPage extends State<BottomNavigationPage> {
  int _selectedPageIndex = 0;
  late List<Map<String, dynamic>> _pages;

  @override
  initState() {
    super.initState();
    _pages = [
      {'title': 'Inicio', 'page': HomePageContent()},
      {'title': 'Em breve', 'page': EmBrevePageContent()},
      {'title': 'Downloads', 'page': DownloadsPageContent()},
    ];
  }

  _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedPageIndex == 0
            ? Image.asset(
                'assets/images/logo-recortada.jpg',
                fit: BoxFit.contain,
                height: 50,
              )
            : Text(_pages[_selectedPageIndex]['title']),
        actions: [AppBarActions()],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            _pages[_selectedPageIndex]['page'],
          ],
        ),
      ),
      floatingActionButton: _selectedPageIndex == 0
          ? FloatingActionButton.extended(
              backgroundColor: Colors.white70,
              label: Text(
                'Surpreenda-me',
                style: Theme.of(context).textTheme.headline6,
              ),
              isExtended: false,
              icon: Row(
                children: [
                  SizedBox(
                    width: 25,
                    child: Image.asset(
                      'assets/images/shuffle-icon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            )
          : const SizedBox(width: 1),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        onTap: _selectedPage,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
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
      ),
    );
  }
}
