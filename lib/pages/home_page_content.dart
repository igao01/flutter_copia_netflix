import 'package:copia_netflix/components/home_page_highlight.dart';
import 'package:copia_netflix/components/title_list.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categorias = ['Ação', 'Comédia', 'Terror'];

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height - 176,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HomePageHighlight(),
                const SizedBox(
                  height: 24,
                ),
                // Lista de titulo
                Column(
                  children: categorias
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
