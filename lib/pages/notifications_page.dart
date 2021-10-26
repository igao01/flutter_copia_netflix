import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notificações',
          style: Theme.of(context).textTheme.headline5,
        ),
        actions: [AppBarActions()],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 50,
        color: Theme.of(context).colorScheme.background,
        child: const Text('Tela de notificações'),
      ),
    );
  }
}
