import 'package:copia_netflix/pages/downloads_page.dart';
import 'package:copia_netflix/pages/em_breve_page.dart';
import 'package:copia_netflix/pages/home_page.dart';
import 'package:copia_netflix/pages/profile_page.dart';
import 'package:copia_netflix/pages/search_page.dart';
import 'package:copia_netflix/routes/routes.dart';

class AppPages {
  static final pages = {
    AppRoutes.home: (ctx) => const HomePage(),
    AppRoutes.emBreve: (ctx) => const EmBrevePage(),
    AppRoutes.downloads: (ctx) => const DownloadsPage(),
    AppRoutes.search: (ctx) => const SearchPage(),
    AppRoutes.profile: (ctx) => const ProfilePage(),
  };
}
