import 'package:flutter/cupertino.dart';

abstract class SurpriseMeViewModel {
  void newRandomTitle() {}

  void backToHomePage(BuildContext context) {}
}

class SurpriseMeViewModelImpl {
  void newRandomTitle() {}

  void backToHomePage(BuildContext context) {
    Navigator.of(context).pop();
  }
}
