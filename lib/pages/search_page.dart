import 'package:copia_netflix/components/app_bar_actions.dart';
import 'package:copia_netflix/components/search_field.dart';
import 'package:copia_netflix/components/search_title_item.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesquisa'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          AppBarActions(
            wasCalledBySearchPage: true,
          )
        ],
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchField(),
            const SizedBox(height: 16),
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Principais buscas',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (ctx, index) => const SearchTitleItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
