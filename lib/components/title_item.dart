import 'package:flutter/material.dart';

class TitleItem extends StatelessWidget {
  const TitleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Image.asset(
        'assets/images/capa.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
