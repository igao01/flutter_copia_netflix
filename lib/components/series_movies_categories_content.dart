import 'package:copia_netflix/components/highlight.dart';
import 'package:copia_netflix/components/title_list.dart';
import 'package:flutter/material.dart';

class SeriesMoviesCategoriesContent extends StatelessWidget {
  SeriesMoviesCategoriesContent({
    Key? key,
  }) : super(key: key);

  final categories = [
    'Ação',
    'Comédia',
    'Ficção Científica',
    'Romance',
    'Terror'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Highlight(),
          const SizedBox(
            height: 24,
          ),
          // Lista de titulo
          Column(
            children: categories
                .map(
                  (categoria) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoria,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 3),
                      const TitleList(),
                      const SizedBox(height: 18),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
