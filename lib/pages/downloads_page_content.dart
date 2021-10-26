import 'package:flutter/material.dart';

class DownloadsPageContent extends StatelessWidget {
  const DownloadsPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          InkWell(
            child: Row(
              children: [
                const Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                const SizedBox(width: 5),
                Text(
                  'Smart Downloads',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
            onTap: () {},
          ),
          const SizedBox(height: 16),
          Text(
            'Conheça o Downloads para você',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 8),
          Text(
            'Vamos baixar uma seleção personalizada de filmes e séries para você sempre ter um título para assistir no celular',
            style: Theme.of(context).textTheme.caption,
            softWrap: true,
          ),
          const SizedBox(height: 8),
          Image.asset(
            'assets/images/downloads-highlight.png',
            fit: BoxFit.cover,
            width: 300,
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              child: const Text(
                'CONFIGURAR',
                style: TextStyle(backgroundColor: Colors.blue),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            child: Text(
              'Encontre mais títulos para baixar',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    backgroundColor: Theme.of(context).colorScheme.surface,
                  ),
            ),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Theme.of(context).colorScheme.surface,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
