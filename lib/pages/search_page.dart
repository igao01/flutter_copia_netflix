import 'package:copia_netflix/components/search_field.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesquisa'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        //foregroundColor: Theme.of(context).colorScheme.primary,
        //actions: const [AppBarActions()],
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
                itemBuilder: (ctx, index) => InkWell(
                  onTap: () {},
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    margin: const EdgeInsets.only(bottom: 3),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 120,
                          child: Image.asset(
                            'assets/images/destaque.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Trollhunters',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.play_circle_outline),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
