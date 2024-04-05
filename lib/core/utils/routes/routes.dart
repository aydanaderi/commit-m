import 'package:auto_route/auto_route.dart';
import 'package:commit_m/screens/home/home_screen.dart';
import 'package:commit_m/screens/main_product/main_product_screen.dart';
import 'package:commit_m/screens/root/root_screen.dart';
import 'package:commit_m/screens/card/card_screen.dart';
import 'package:commit_m/screens/profile/profile_screen.dart';
import 'package:commit_m/screens/favorite/favorite_screen.dart';


part 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: RootRoute.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(
              initial: true,
              page: HomeRoute.page,
              maintainState: false,
            ),
            AutoRoute(
              initial: false,
              page: FavoriteRoute.page,
              maintainState: false,
            ),
            AutoRoute(
              initial: false,
              page: CardRoute.page,
              maintainState: false,
            ),
            AutoRoute(
              initial: false,
              page: ProfileRoute.page,
              maintainState: false,
            ),
          ],
        ),
    AutoRoute(
      initial: false,
      page: MainProductRoute.page,
      maintainState: false,
    ),

      ];
}
