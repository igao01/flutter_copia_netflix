import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/custom_bottom_app_bar.dart';
import 'package:copia_netflix/components/custom_bottom_navigation_bar.dart';
import 'package:copia_netflix/components/surprise_me_fab.dart';
import 'package:copia_netflix/pages/downloads_page_content.dart';
import 'package:copia_netflix/pages/em_breve_page_content.dart';
import 'package:copia_netflix/pages/home_page_content.dart';
import 'package:copia_netflix/viewmodel/bottom_navigation_page_viewmodel.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  final _vm = BottomNavigationPageViewModelImpl();
  int _selectedBottomPageIndex = 0;
  late final List<Map<String, dynamic>> _bottomPages;

  @override
  void initState() {
    super.initState();

    // define um map com as páginas que serão utilizada na BottomNavigationBar
    _bottomPages = [
      {'title': 'Início', 'page': const HomePageContent()},
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
        title:
            // exibe a logo somente na tela inicial
            _selectedBottomPageIndex == 0
                ? Image.asset(
                    'assets/images/logo-recortada.jpg',
                    fit: BoxFit.contain,
                    height: 50,
                  )
                : Text(
                    _bottomPages[_selectedBottomPageIndex]['title'],
                  ),
        actions: const [AppBarActions()],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            // exibe a barra de Séries Filmes Categorias somente na tela inicial
            _selectedBottomPageIndex == 0
                ? CustomBottomAppBar(_vm)
                : const SizedBox(height: 0),
            _bottomPages[_selectedBottomPageIndex]['page'],
          ],
        ),
      ),
      floatingActionButton:
          // exibe o FAB somente na tela inicial
          _selectedBottomPageIndex == 0
              ? SurpriseMeFAB(
                  isExpandedFAB: false,
                  onPressed: () => _vm.openSurpriseMePage(context),
                )
              : const SizedBox(width: 1),
      bottomNavigationBar:
          CustomBottomNavigationBar(_selectedBottomPageIndex, _selectedPage),
    );
  }
}
