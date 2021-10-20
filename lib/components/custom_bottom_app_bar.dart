import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _createTextButton(String label, Function() onPressed) {
      return TextButton(
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0x00000000), // transparente
          ),
        ),
        onPressed: onPressed,
      );
    }

    return Container(
      height: 40,
      width: double.infinity,
      color: Colors.black38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _createTextButton('Séries', () {}),
          _createTextButton('Filmes', () {}),
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
