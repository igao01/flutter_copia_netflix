import 'package:flutter/material.dart';

class EmBreveItem extends StatelessWidget {
  const EmBreveItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Column _createButton(String label, IconData icon) {
      return Column(
        children: [
          Icon(
            icon,
            size: 26,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/em-breve-img.webp',
          fit: BoxFit.cover,
          height: 250,
        ),
        const SizedBox(height: 3),
        Text(
          'Novo episódio em 10 de novembro',
          style: Theme.of(context).textTheme.caption,
          softWrap: true,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 8),
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Trollhunters',
                style: Theme.of(context).textTheme.headline5,
              ),
              const Spacer(),
              _createButton('Receber aviso', Icons.notifications),
              const SizedBox(width: 8),
              _createButton('Saiba mais', Icons.info_outline_rounded),
            ],
          ),
        ),
      ],
    );
  }
}
