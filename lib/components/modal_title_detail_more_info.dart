import 'package:flutter/material.dart';

class ModalTitleDetailMoreInfo extends StatelessWidget {
  const ModalTitleDetailMoreInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.info_outline_rounded),
          const SizedBox(width: 5),
          Text(
            'Mais informações',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ],
      ),
    );
  }
}
