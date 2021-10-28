import 'package:copia_netflix/components/highlight_button.dart';
import 'package:flutter/material.dart';

class ProfileAndMoreShareInfo extends StatelessWidget {
  const ProfileAndMoreShareInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.message_outlined),
              const SizedBox(width: 5),
              Text(
                'Fale da Netflix para seus amigos.',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Compartilhe este link para seus amigos ficarem por dentro dos seus filmes e séries favoritos.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 8),
          TextButton(
            child: Text(
              'Termos e condições',
              style: Theme.of(context).textTheme.caption!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            onPressed: () {},
          ),
          Row(
            children: [
              Container(
                width: 250,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: const Text('https://www.netflix.com'),
              ),
              ElevatedButton(
                child: const Text('Copiar link'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Theme.of(context).colorScheme.primary,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HighlightButton('Whatsapp', Icons.call_rounded),
                HighlightButton('Facebook', Icons.facebook),
                HighlightButton('Gmail', Icons.g_mobiledata),
                HighlightButton('Mais', Icons.keyboard_control),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
