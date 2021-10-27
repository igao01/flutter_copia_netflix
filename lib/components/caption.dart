import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  String duration;
  String img;
  int year;

  Caption({
    Key? key,
    required this.img,
    required this.year,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$year',
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(width: 20),
        Image.asset(
          img,
          fit: BoxFit.cover,
          width: 15,
        ),
        const SizedBox(width: 20),
        Text(
          duration,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
