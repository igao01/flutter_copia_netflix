import 'package:copia_netflix/components/caption.dart';
import 'package:flutter/material.dart';

class TitleDetailCaption extends StatelessWidget {
  const TitleDetailCaption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '99% relevante',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.green,
              ),
        ),
        const SizedBox(width: 20),
        Caption(
          img: 'assets/images/classificacao-indicativa.webp',
          year: 2018,
          duration: '3 Partes',
        ),
      ],
    );
  }
}
