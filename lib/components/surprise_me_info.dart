import 'package:copia_netflix/components/caption.dart';
import 'package:copia_netflix/components/highlight_button.dart';
import 'package:flutter/material.dart';

class SurpriseMeInfo extends StatelessWidget {
  const SurpriseMeInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Trollhunters',
          style: Theme.of(context).textTheme.headline5,
        ),
        Caption(
            duration: '2 Temporadas',
            year: 2018,
            img: 'assets/images/classificacao-indicativa.webp'),
        SizedBox(
          width: 200,
          child: Text(
            'Uma história de fantasia',
            style: Theme.of(context).textTheme.bodyText1,
            softWrap: true,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            HighlightButton('Compartilhar', Icons.share),
            const SizedBox(width: 8),
            HighlightButton('Minha Lista', Icons.add),
          ],
        ),
      ],
    );
  }
}
