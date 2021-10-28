import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Lista'),
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: const [AppBarActions()],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).colorScheme.background,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Divirta-se',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              padding: const EdgeInsets.only(top: 8),
              height: MediaQuery.of(context).size.height * 0.86,
              width: MediaQuery.of(context).size.width,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 2 / 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                children: [
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/capa.jpg'),
                    ),
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRoutes.titleDetail),
                  ),
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/capa.jpg'),
                    ),
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRoutes.titleDetail),
                  ),
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/capa.jpg'),
                    ),
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRoutes.titleDetail),
                  ),
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/capa.jpg'),
                    ),
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRoutes.titleDetail),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
