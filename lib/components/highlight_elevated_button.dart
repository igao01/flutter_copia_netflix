import 'package:flutter/material.dart';

class HighlightElevatedButton extends StatelessWidget {
  const HighlightElevatedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
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
    );
  }
}
