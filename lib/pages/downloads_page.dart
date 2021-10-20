import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Downloads'),
        actions: const [AppBarActions()],
      ),
      body: Center(
        child: Text('Downloads'),
      ),
    );
  }
}
