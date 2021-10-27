import 'package:copia_netflix/components/highlight_button.dart';
import 'package:copia_netflix/components/highlight_elevated_button.dart';
import 'package:copia_netflix/components/modal_title_detail.dart';
import 'package:flutter/material.dart';

class Highlight extends StatelessWidget {
  const Highlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _openTitleDetailModal(BuildContext context) {
      final mediaSize = MediaQuery.of(context).size;

      showModalBottomSheet(
        context: context,
        builder: (_) => ModalTitleDetail(mediaSize: mediaSize),
      );
    }

    Widget _createTag(String label) {
      return Container(
        margin: const EdgeInsets.only(left: 5),
        child: Row(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.headline4,
            ),

            // cria o ponto vermelho separando as tags
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

    return Column(
      children: [
        InkWell(
          onTap: () => _openTitleDetailModal(context),
          child: SizedBox(
            height: 360,
            child: Image.asset(
              'assets/images/destaque.jpg',
              fit: BoxFit.fill,
            ),
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
            HighlightButton('Minha lista', Icons.add),
            const HighlightElevatedButton(),
            HighlightButton(
              'Saiba mais',
              Icons.info_outline_rounded,
              onTap: () => _openTitleDetailModal(context),
            ),
          ],
        ),
      ],
    );
  }
}
