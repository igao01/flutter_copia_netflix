import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          'assets/images/notification-img.png',
          fit: BoxFit.cover,
          width: 100,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Novidade',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 5),
          Text(
            'Trollhunters',
            style: Theme.of(context).textTheme.headline4,
            softWrap: true,
          ),
          const SizedBox(height: 2),
          Text(
            '10 de nov.',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
