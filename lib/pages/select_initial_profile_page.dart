import 'package:copia_netflix/components/initial_profile_item.dart';
import 'package:flutter/material.dart';

class SelectInitialProfilePage extends StatelessWidget {
  const SelectInitialProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 24),
          width: double.infinity,
          height: 35,
          child: Image.asset(
            'assets/images/logo-completa.jpg',
            fit: BoxFit.contain,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).colorScheme.background,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quem está assistindo?',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 500,
              width: 350,
              child: GridView(
                padding: const EdgeInsets.all(25),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  InitialProfileItem(),
                  InitialProfileItem(),
                  InitialProfileItem(),
                  InitialProfileItem(),
                  InitialProfileItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
