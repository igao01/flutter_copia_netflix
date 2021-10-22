import 'package:flutter/material.dart';

class Highlight extends StatelessWidget {
  const Highlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _createTag(String label) {
      return Container(
        margin: const EdgeInsets.only(left: 5),
        child: Row(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              width: 3,
              height: 3,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        ),
      );
    }

    Widget _createButton(String label, IconData icon) {
      return InkWell(
        child: Column(
          children: [
            Icon(icon),
            Text(
              label,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        onTap: () {},
      );
    }

    return Column(
      children: [
        SizedBox(
          height: 360,
          child: Image.asset(
            'assets/images/destaque.jpg',
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            _createTag('Aventura'),
            _createTag('Fantasia'),
            _createTag('Tudo é possivel'),
            _createTag('Série'),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _createButton('Minha lista', Icons.add),
            ElevatedButton.icon(
              icon: const Icon(Icons.play_arrow),
              label: Text(
                'Assistir',
                style: Theme.of(context).textTheme.button,
              ),
              style: TextButton.styleFrom(
                primary: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {},
            ),
            _createButton('Saiba mais', Icons.info_outline_rounded),
          ],
        ),
      ],
    );
  }
}
