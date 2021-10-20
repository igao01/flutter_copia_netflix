import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/custom_bottom_app_bar.dart';
import 'package:copia_netflix/components/custom_bottom_navigation_bar.dart';
import 'package:copia_netflix/components/home_page_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/images/logo-recortada.jpg',
          fit: BoxFit.contain,
          height: 50,
        ),
        actions: const [AppBarActions()],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            Stack(
              children: [
                HomePageContent(),
                CustomBottomAppBar(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
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
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
