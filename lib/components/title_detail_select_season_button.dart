import 'package:flutter/material.dart';

class TitleDetailSelectSeasonButton extends StatelessWidget {
  const TitleDetailSelectSeasonButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 110,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Text(
              'Parte 1',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
