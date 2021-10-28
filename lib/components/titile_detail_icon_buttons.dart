import 'package:copia_netflix/components/highlight_button.dart';
import 'package:flutter/material.dart';

class TitleDetailIconButtons extends StatelessWidget {
  const TitleDetailIconButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        HighlightButton('Minha Lista', Icons.add),
        HighlightButton('Classifique', Icons.thumb_up_alt_outlined),
        HighlightButton('Compartilhe', Icons.share),
        HighlightButton('Download T1', Icons.file_download_outlined),
      ],
    );
  }
}
