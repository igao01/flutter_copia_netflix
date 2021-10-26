import 'package:copia_netflix/routes/routes.dart';
import 'package:flutter/material.dart';

abstract class EmBreveViewmodel {
  void openNotificationsPage(BuildContext ctx);
}

class EmBreveViewmodelImpl implements EmBreveViewmodel {
  @override
  void openNotificationsPage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(AppRoutes.notifications);
  }
}
