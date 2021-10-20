import 'package:copia_netflix/components/title_item.dart';
import 'package:flutter/material.dart';

class TitleList extends StatelessWidget {
  const TitleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (ctx, index) => const TitleItem(),
      ),
    );
  }
}
