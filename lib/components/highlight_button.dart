import 'package:flutter/material.dart';

class HighlightButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function()? onTap;

  const HighlightButton(
    this.label,
    this.icon, {
    this.onTap,
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
      onTap: onTap,
    );
  }
}
