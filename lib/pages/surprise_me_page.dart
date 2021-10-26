import 'package:copia_netflix/components/caption.dart';
import 'package:copia_netflix/components/highlight_button.dart';
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
    Container _createArrowButton(
        IconButton button, double paddingL, double paddingR) {
      return Container(
        padding: EdgeInsets.fromLTRB(paddingL, 0, paddingR, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
        child: button,
      );
    }

    Column _createInfo(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Trollhunters',
            style: Theme.of(context).textTheme.headline5,
          ),
          Caption(
              duration: '2 Temporadas',
              year: 2018,
              img: 'assets/images/classificacao-indicativa.webp'),
          SizedBox(
            width: 200,
            child: Text(
              'Uma história de fantasia',
              style: Theme.of(context).textTheme.bodyText1,
              softWrap: true,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              HighlightButton('Compartilhar', Icons.share),
              const SizedBox(width: 8),
              HighlightButton('Minha Lista', Icons.add),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/destaque.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black12,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color: Theme.of(context).colorScheme.secondary, width: 3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => _vm.backToHomePage(context),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _createArrowButton(
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                  ),
                  10, // paddingL
                  0, // paddingR
                ),
                // componente
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35,
                  ),
                  // metade da altura disponivel
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: _createInfo(context),
                ),
                const Spacer(),
                InkWell(
                  child: Row(
                    children: [
                      Text(
                        'Surpreenda-me',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      _createArrowButton(
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                        0, // paddingL
                        5, // paddingR
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
