import 'package:copia_netflix/components/modal_categories_item.dart';
import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class ModalCategoriesList extends StatelessWidget {
  const ModalCategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          child: Text(
            'Início',
            style: Theme.of(context).textTheme.headline6,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: Text(
            'Minha Lista',
            style: Theme.of(context).textTheme.headline5,
          ),
          onPressed: () =>
              Navigator.of(context).pushReplacementNamed(AppRoutes.myList),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const ModalCategoriesItem(),
          ),
        ),
      ],
    );
  }
}
