import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class InitialProfileItem extends StatelessWidget {
  const InitialProfileItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushReplacementNamed(AppRoutes.home),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 120,
            color: Colors.yellow[200],
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Profile',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
