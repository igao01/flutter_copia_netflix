import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/series_movies_categories_content.dart';
import 'package:flutter/material.dart';

class SeriesMoviesCategoriesPage extends StatelessWidget {
  const SeriesMoviesCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // pega o titulo da appBar passado pelo arguments quando a rota é chamada
    final String appBarTitle =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [AppBarActions()],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height - 80,
                child: SeriesMoviesCategoriesContent())
          ],
        ),
      ),
    );
  }
}
