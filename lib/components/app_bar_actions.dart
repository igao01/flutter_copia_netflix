import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  bool? wasCalledBySearchPage;

  AppBarActions({
    this.wasCalledBySearchPage = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // esconde o botao de pesquisa da AppBar na tela de pesquisa
        if (wasCalledBySearchPage! == false)
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.of(context).pushNamed(AppRoutes.search),
          ),
        IconButton(
          icon: Image.asset(
            'assets/images/avatar.png',
            fit: BoxFit.cover,
            height: 24,
          ),
          onPressed: () => Navigator.of(context).pushNamed(AppRoutes.profile),
        )
      ],
    );
  }
}
