import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

class SearchTitleItem extends StatelessWidget {
  const SearchTitleItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(AppRoutes.titleDetail),
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        margin: const EdgeInsets.only(bottom: 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 120,
              child: Image.asset(
                'assets/images/destaque.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Trollhunters',
              style: Theme.of(context).textTheme.headline3,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.play_circle_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
