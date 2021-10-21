import 'package:flutter/material.dart';

class SurpriseMeFAB extends StatelessWidget {
  const SurpriseMeFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.white70,
      label: Text(
        'Surpreenda-me',
        style: Theme.of(context).textTheme.headline6,
      ),
      isExtended: false,
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
      onPressed: () {},
    );
  }
}
