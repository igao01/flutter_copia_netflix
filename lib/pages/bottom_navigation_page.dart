import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/custom_bottom_app_bar.dart';
import 'package:copia_netflix/components/custom_bottom_navigation_bar.dart';
import 'package:copia_netflix/components/surprise_me_fab.dart';
import 'package:copia_netflix/pages/downloads_page_content.dart';
import 'package:copia_netflix/pages/em_breve_page_content.dart';
import 'package:copia_netflix/pages/home_page_content.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedBottomPageIndex = 0;
  bool _isExpandedFAB = false;
  late final List<Map<String, dynamic>> _bottomPages;

  @override
  void initState() {
    super.initState();
    _bottomPages = [
      {'title': 'Inicio', 'page': const HomePageContent()},
      {'title': 'Em breve', 'page': const EmBrevePageContent()},
      {'title': 'Downloads', 'page': const DownloadsPageContent()},
    ];
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedBottomPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedBottomPageIndex == 0
            ? Image.asset(
                'assets/images/logo-recortada.jpg',
                fit: BoxFit.contain,
                height: 50,
              )
            : Text(
                _bottomPages[_selectedBottomPageIndex]['title'],
              ),
        actions: [AppBarActions()],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            // exibe a barra de Séries Filmes Categorias somente na tela principal
            _selectedBottomPageIndex == 0
                ? const CustomBottomAppBar()
                : const SizedBox(height: 0),
            _bottomPages[_selectedBottomPageIndex]['page'],
          ],
        ),
      ),
      floatingActionButton:
          // exibe o FAB somente na tela principal
          _selectedBottomPageIndex == 0
              ? SurpriseMeFAB(_isExpandedFAB)
              : const SizedBox(width: 1),
      bottomNavigationBar:
          CustomBottomNavigationBar(_selectedBottomPageIndex, _selectedPage),
    );
  }
}
