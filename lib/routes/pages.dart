import 'package:copia_netflix/pages/downloads_page_content.dart';
import 'package:copia_netflix/pages/em_breve_page_content.dart';
import 'package:copia_netflix/pages/bottom_navigation_page.dart';
import 'package:copia_netflix/pages/my_list_page.dart';
import 'package:copia_netflix/pages/notifications_page.dart';
import 'package:copia_netflix/pages/select_initial_profile_page.dart';
import 'package:copia_netflix/pages/series_movies_categories_page.dart';
import 'package:copia_netflix/pages/profile_and_more_page.dart';
import 'package:copia_netflix/pages/search_page.dart';
import 'package:copia_netflix/pages/surprise_me_page.dart';
import 'package:copia_netflix/pages/title_detail_page.dart';
import 'package:copia_netflix/routes/routes.dart';

class AppPages {
  static final pages = {
    AppRoutes.selectInitialProfile: (ctx) => const SelectInitialProfilePage(),
    AppRoutes.home: (ctx) => const BottomNavigationPage(),
    AppRoutes.emBreve: (ctx) => const EmBrevePageContent(),
    AppRoutes.downloads: (ctx) => const DownloadsPageContent(),
    AppRoutes.search: (ctx) => const SearchPage(),
    AppRoutes.profile: (ctx) => const ProfileAndMorePage(),
    AppRoutes.surpriseMe: (ctx) => const SurpriseMePage(),
    AppRoutes.notifications: (ctx) => const NotificationsPage(),
    AppRoutes.myList: (ctx) => const MyListPage(),
    AppRoutes.titleDetail: (ctx) => const TitileDetailPage(),
    AppRoutes.seriesMoviesCategories: (ctx) =>
        const SeriesMoviesCategoriesPage(),
  };
}
