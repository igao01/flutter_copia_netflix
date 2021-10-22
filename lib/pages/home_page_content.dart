import 'package:copia_netflix/components/series_movies_categories_content.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height - 176,
          child: SerisMoviesCategoriesContent(),
        ),
      ],
    );
  }
}
