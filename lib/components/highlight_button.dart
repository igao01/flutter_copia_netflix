import 'package:flutter/material.dart';

class HighlightButton extends StatelessWidget {
  IconData icon;
  String label;

  HighlightButton(
    this.label,
    this.icon, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Icon(icon),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
