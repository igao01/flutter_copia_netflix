import 'package:copia_netflix/components/home_page_highlight.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomePageHighlight(),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 120,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (ctx, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  color: Colors.red,
                  width: 80,
                  child: Text('Titulo'),
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (ctx, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  color: Colors.red,
                  height: 200,
                  width: 100,
                  child: Text('Titulo'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
