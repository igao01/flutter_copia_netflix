import 'package:flutter/material.dart';

class CloseCategoriesModalButton extends StatelessWidget {
  const CloseCategoriesModalButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(bottom: 20.0),
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: const Text(
            'x',
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
