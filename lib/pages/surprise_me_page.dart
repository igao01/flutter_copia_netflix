import 'package:copia_netflix/components/surprise_me_content.dart';
import 'package:copia_netflix/components/surprise_me_white_border.dart';
import 'package:copia_netflix/viewmodel/surprise_me_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SurpriseMePage extends StatefulWidget {
  const SurpriseMePage({Key? key}) : super(key: key);

  @override
  State<SurpriseMePage> createState() => _SurpriseMePageState();
}

class _SurpriseMePageState extends State<SurpriseMePage> {
  final _vm = SurpriseMeViewModelImpl();

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
      body: Stack(
        children: [
          // imagem de fundo
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/destaque.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // container de cor preta transparente pare escurecer
          // um pouco a imagem e destacar os botões e informações da tela
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black12,
          ),

          // container que desenha a borda branca na tela
          SurpriseMeWhiteBorder(
            vm: _vm,
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => _vm.backToHomePage(context),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const SurpriseMeContent(),
          ),
        ],
      ),
    );
  }
}
