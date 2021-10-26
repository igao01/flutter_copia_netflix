import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/cupertino.dart';

abstract class BottomNavigationPageViewModel {
  void openSurpriseMePage(BuildContext ctx);
}

class BottomNavigationPageViewModelImpl
    implements BottomNavigationPageViewModel {
  @override
  void openSurpriseMePage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(AppRoutes.surpriseMe);
  }
}
