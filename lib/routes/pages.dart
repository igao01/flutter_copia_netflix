import 'package:copia_netflix/pages/downloads_page_content.dart';
import 'package:copia_netflix/pages/em_breve_page_content.dart';
import 'package:copia_netflix/pages/bottom_navigation_page.dart';
import 'package:copia_netflix/pages/profile_page.dart';
import 'package:copia_netflix/pages/search_page.dart';
import 'package:copia_netflix/routes/routes.dart';

class AppPages {
  static final pages = {
    AppRoutes.home: (ctx) => const BottomNavigationPage(),
    AppRoutes.emBreve: (ctx) => const EmBrevePageContent(),
    AppRoutes.downloads: (ctx) => const DownloadsPageContent(),
    AppRoutes.search: (ctx) => const SearchPage(),
    AppRoutes.profile: (ctx) => const ProfilePage(),
  };
}
