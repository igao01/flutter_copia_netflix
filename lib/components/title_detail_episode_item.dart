import 'package:flutter/material.dart';

class TitleDetailEpisodeItem extends StatelessWidget {
  const TitleDetailEpisodeItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset('assets/images/notification-img.png'),
          title: const Text('1. Título do espisódio'),
          subtitle: const Text('23m'),
          trailing: IconButton(
            icon: const Icon(Icons.download_rounded),
            onPressed: () {},
          ),
        ),
        Text(
          'Depois de descobrir um amuleto misterioso, um adolescente encontra uma civilização secreta de poderosos trolls sob a pequena cidade de Arcadia.',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
