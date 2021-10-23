import 'package:copia_netflix/components/surprise_me_fab.dart';
import 'package:copia_netflix/viewmodel/surprise_me_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SurpriseMePage extends StatefulWidget {
  const SurpriseMePage({Key? key}) : super(key: key);

  @override
  State<SurpriseMePage> createState() => _SurpriseMePageState();
}

class _SurpriseMePageState extends State<SurpriseMePage> {
  final vm = SurpriseMeViewModelImpl();

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
    return Scaffold(
      body: const Center(
        child: Text('Surpreenda-me'),
      ),
      floatingActionButton: SurpriseMeFAB(
        isExpandedFAB: true,
        onPressed: () => vm.newRandomTitle(),
      ),
    );
  }
}
