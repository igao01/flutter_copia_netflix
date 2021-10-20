import 'package:copia_netflix/components/app_bar_actions.dart';
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
      body: Center(
        child: Text('Em breve'),
      ),
    );
  }
}
