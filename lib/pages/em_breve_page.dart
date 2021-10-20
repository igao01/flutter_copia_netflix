import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class EmBrevePage extends StatelessWidget {
  const EmBrevePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Em breve'),
        actions: const [AppBarActions()],
      ),
      body: const Center(
        child: Text('Em breve'),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
