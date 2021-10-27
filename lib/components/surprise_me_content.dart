import 'package:copia_netflix/components/surprise_me_info.dart';
import 'package:flutter/material.dart';

class SurpriseMeContent extends StatelessWidget {
  const SurpriseMeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Container _createArrowButton(
      IconButton button,
      double paddingL,
      double paddingR,
    ) {
      return Container(
        padding: EdgeInsets.fromLTRB(paddingL, 0, paddingR, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
        child: button,
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // botão esquerdo
        _createArrowButton(
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          10, // paddingL
          0, // paddingR
        ),
        // exibe o componente com informação do título
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.35,
          ),
          // metade da altura disponivel
          height: MediaQuery.of(context).size.height * 0.45,
          child: const SurpriseMeInfo(),
        ),
        const Spacer(),
        InkWell(
          child: Row(
            children: [
              Text(
                'Surpreenda-me',
                style: Theme.of(context).textTheme.headline5,
              ),
              // botão direito
              _createArrowButton(
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
                0, // paddingL
                5, // paddingR
              ),
            ],
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
