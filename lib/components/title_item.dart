import 'package:flutter/material.dart';

class TitleItem extends StatelessWidget {
  const TitleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      child: Image.asset(
        'assets/images/capa.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
