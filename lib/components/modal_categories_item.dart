import 'package:flutter/material.dart';

class ModalCategoriesItem extends StatelessWidget {
  const ModalCategoriesItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Text(
        'Categoria',
        style: Theme.of(context).textTheme.headline3!.copyWith(
              color: Colors.grey[600],
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
