import 'package:copia_netflix/components/title_item.dart';
import 'package:flutter/material.dart';

class TitleList extends StatelessWidget {
  const TitleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (ctx, index) => TitleItem(),
      ),
    );
  }
}
