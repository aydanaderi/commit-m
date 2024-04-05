//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/screens/root/models/root_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:commit_m/core/collections/assets/images.dart';
import 'package:commit_m/core/theme/extension/context_color.dart';
import 'package:commit_m/screens/card/card_screen.dart';
import 'package:commit_m/screens/favorite/favorite_screen.dart';
import 'package:commit_m/screens/home/home_screen.dart';
import 'package:commit_m/screens/profile/profile_screen.dart';
import 'package:commit_m/screens/root/widgets/root.dart';

//? External Packages
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */

@RoutePage()
class RootScreen extends HookWidget {

  /*
   * Constructor
   * __________________________________________________________________________
   */
   const RootScreen({Key? key}) : super(key: key);


   /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
   //Variable
    final PageController pageController = PageController();
    final currentIndex = useState(0);

    List<Widget> pages = [
      const HomeScreen(),
      const FavoriteScreen(),
      const CardScreen(),
      const ProfileScreen(),
    ];

    // UI
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return pages[index];
        },
      ),
      bottomNavigationBar: Theme(
        data: context.theme.copyWith(
          splashColor: context.colorScheme.surface,
          highlightColor: context.colorScheme.surface,
          splashFactory: InkRipple.splashFactory,
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            currentIndex.value = index;
            pageController.jumpToPage(index);
          },
          items:[
            CustomBottomNavigationBarItem(
              item: NavigationItem(
                groupValue: currentIndex.value,
                value: 0,
                icon: home,
                title: "Home",
              ),
            ),
            CustomBottomNavigationBarItem(
              item: NavigationItem(
                groupValue: currentIndex.value,
                value: 1,
                icon: favorite,
                title: "Favorite",
              ),
            ),
            CustomBottomNavigationBarItem(
              item: NavigationItem(
                groupValue: currentIndex.value,
                value: 2,
                icon: card,
                title: "Card",
              ),
            ),
            CustomBottomNavigationBarItem(
              item: NavigationItem(
                groupValue: currentIndex.value,
                value: 3,
                icon: profileIcon,
                title: "Profile",
              ),
            ),

          ],
        ),
      ),
    );
  }
}
