import 'package:copia_netflix/components/highlight_button.dart';
import 'package:copia_netflix/components/highlight_elevated_button.dart';
import 'package:flutter/material.dart';

class ModalTitleDetailButtons extends StatelessWidget {
  final Size mediaSize;

  const ModalTitleDetailButtons({
    Key? key,
    required this.mediaSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: mediaSize.width * 0.45,
            child: const HighlightElevatedButton(),
          ),
          HighlightButton('Download', Icons.download_rounded),
          HighlightButton('Trailer', Icons.play_arrow_outlined),
        ],
      ),
    );
  }
}
