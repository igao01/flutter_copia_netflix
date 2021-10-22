import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // cria os textButtons da barra Séries Filmes Categorias
    Widget _createTextButton(String label, Function() onPressed) {
      return TextButton(
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0x00000000), // cor transparente
          ),
        ),
        onPressed: onPressed,
      );
    }

    return Container(
      height: 40,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _createTextButton(
            'Séries',
            () => Navigator.of(context).pushNamed(
              AppRoutes.seriesMoviesCategories,
              arguments: 'Séries',
            ),
          ),
          _createTextButton(
            'Filmes',
            () => Navigator.of(context).pushNamed(
              AppRoutes.seriesMoviesCategories,
              arguments: 'Filmes',
            ),
          ),
          Row(
            children: [
              _createTextButton('Categorias', () {}),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ],
      ),
    );
  }
}
