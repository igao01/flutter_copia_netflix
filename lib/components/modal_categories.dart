import 'package:copia_netflix/components/modal_categories_close_button.dart';
import 'package:copia_netflix/components/modal_categories_list.dart';
import 'package:flutter/material.dart';

class ModalCategories extends StatelessWidget {
  const ModalCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // cria modal com fundo transparente
      type: MaterialType.transparency,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black54,
        child: Stack(
          children: const [
            ModalCategoriesList(),
            ModalCategoriesCloseButton(),
          ],
        ),
      ),
    );
  }
}
