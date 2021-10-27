import 'package:copia_netflix/components/caption.dart';
import 'package:flutter/material.dart';

class ModalTitleDetailInfo extends StatelessWidget {
  final Size mediaSize;

  const ModalTitleDetailInfo({
    Key? key,
    required this.mediaSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 90,
          child: Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                'assets/images/capa.jpg',
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trollhunters',
              style: Theme.of(context).textTheme.headline5,
            ),
            Caption(
              img: 'assets/images/classificacao-indicativa.webp',
              year: 2018,
              duration: '3 Partes',
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: mediaSize.width - 110,
              child: Text(
                'Depois de descobrir um amuleto misterioso, um adolescente encontra uma civilização secreta de poderosos trolls sob a pequena cidade de Arcadia.',
                style: Theme.of(context).textTheme.bodyText1,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
