import 'package:copia_netflix/pages/category_page_content.dart';
import 'package:copia_netflix/pages/downloads_page_content.dart';
import 'package:copia_netflix/pages/em_breve_page_content.dart';
import 'package:copia_netflix/pages/bottom_navigation_page.dart';
import 'package:copia_netflix/pages/notifications_page.dart';
import 'package:copia_netflix/pages/select_initial_profile_page.dart';
import 'package:copia_netflix/pages/series_movies_categories_page.dart';
import 'package:copia_netflix/pages/change_profile_page.dart';
import 'package:copia_netflix/pages/search_page.dart';
import 'package:copia_netflix/pages/surprise_me_page.dart';
import 'package:copia_netflix/routes/routes.dart';

class AppPages {
  static final pages = {
    AppRoutes.selectInitialProfile: (ctx) => const SelectInitialProfilePage(),
    AppRoutes.home: (ctx) => const BottomNavigationPage(),
    AppRoutes.emBreve: (ctx) => const EmBrevePageContent(),
    AppRoutes.downloads: (ctx) => const DownloadsPageContent(),
    AppRoutes.search: (ctx) => const SearchPage(),
    AppRoutes.profile: (ctx) => const ProfilePage(),
    AppRoutes.categories: (ctx) => const CategoryPageContent(),
    AppRoutes.surpriseMe: (ctx) => const SurpriseMePage(),
    AppRoutes.notifications: (ctx) => const NotificationsPage(),
    AppRoutes.seriesMoviesCategories: (ctx) =>
        const SeriesMoviesCategoriesPage(),
  };
}
