import 'package:copia_netflix/routes/pages.dart';
import 'package:copia_netflix/routes/routes.dart';
import 'package:copia_netflix/utils/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a orientacao portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Netflix',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      initialRoute: AppRoutes.selectInitialProfile,
      routes: AppPages.pages,
    );
  }
}
