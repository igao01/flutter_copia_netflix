import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SurpriseMePage extends StatefulWidget {
  const SurpriseMePage({Key? key}) : super(key: key);

  @override
  State<SurpriseMePage> createState() => _SurpriseMePageState();
}

class _SurpriseMePageState extends State<SurpriseMePage> {
  // altera o orientacao do dispositivo para landscape
  @override
  initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  // volta a orientacao do dispositivo para portrait
  @override
  dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Surpreenda-me'),
      ),
    );
  }
}
