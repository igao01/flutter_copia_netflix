import 'package:copia_netflix/routes/pages.dart';
import 'package:copia_netflix/utils/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      routes: AppPages.pages,
    );
  }
}
