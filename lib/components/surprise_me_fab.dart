import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class SurpriseMeFAB extends StatelessWidget {
  final bool isExpandedFAB;
  final Function() onPressed;

  SurpriseMeFAB({
    Key? key,
    required this.isExpandedFAB,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.white70,
      label: Text(
        'Surpreenda-me',
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Colors.black,
              fontSize: 18,
            ),
      ),
      isExtended: isExpandedFAB,
      icon: Row(
        children: [
          SizedBox(
            width: 25,
            child: Image.asset(
              'assets/images/shuffle-icon.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      onPressed: () => onPressed,
    );
  }
}
