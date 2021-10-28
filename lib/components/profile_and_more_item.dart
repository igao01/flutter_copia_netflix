import 'package:flutter/material.dart';

class ProfileAndMoreItem extends StatelessWidget {
  const ProfileAndMoreItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            color: Colors.yellow[300],
            child: Image.asset(
              'assets/images/avatar.png',
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          'Nome',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
