import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes'),
      ),
      body: Center(
        child: Text('Filmes'),
      ),
    );
  }
}
