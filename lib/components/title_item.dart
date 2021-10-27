import 'package:copia_netflix/components/modal_title_detail.dart';
import 'package:flutter/material.dart';

class TitleItem extends StatelessWidget {
  const TitleItem({Key? key}) : super(key: key);

  _openTitleDetailModal(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;

    showModalBottomSheet(
      context: context,
      builder: (_) => ModalTitleDetail(mediaSize: mediaSize),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        child: Image.asset(
          'assets/images/capa.jpg',
          fit: BoxFit.cover,
        ),
      ),
      onTap: () => _openTitleDetailModal(context),
    );
  }
}
