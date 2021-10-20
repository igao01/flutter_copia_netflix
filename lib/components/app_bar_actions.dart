import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.cast),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.network(
            'https://pixabay.com/get/gf11a6a8325395b3d91cde47ac0bb32143c1613af9eb5ce979b5a037f0b4c61428fa0196f8dd1948cb51ac914ca18f983a58f74b699b10b538edd6fdc45cc0926868088a20b3aaf436a7b5f20c520da1b_1920.png',
            fit: BoxFit.cover,
            height: 24,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
