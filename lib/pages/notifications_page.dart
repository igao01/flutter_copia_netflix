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
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (ctx, index) => ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/notification-img.png',
                fit: BoxFit.cover,
                width: 100,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Novidade',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Trollhunters',
                  style: Theme.of(context).textTheme.headline4,
                  softWrap: true,
                ),
                const SizedBox(height: 2),
                Text(
                  '10 de nov.',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
