import 'package:copia_netflix/pages/downloads_page.dart';
import 'package:copia_netflix/pages/em_breve_page.dart';
import 'package:copia_netflix/pages/home_page.dart';
import 'package:copia_netflix/routes/routes.dart';

class AppPages {
  static final pages = {
    AppRoutes.home: (ctx) => HomePage(),
    AppRoutes.emBreve: (ctx) => EmBrevePage(),
    AppRoutes.downloads: (ctx) => DownloadsPage(),
  };
}
