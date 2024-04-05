//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/screens/home/widgets/categories/categories.dart';
import 'package:commit_m/screens/home/widgets/header/header.dart';
import 'package:commit_m/core/collections/constant/constant.dart';
import 'package:commit_m/screens/home/widgets/search/home_search.dart';

//? External Packages
import 'package:flutter/material.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class Home extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const Home({
    super.key,
  });

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // UI
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HomeHeader(),
          ),
          SliverToBoxAdapter(
            child: HomeSearch(),
          ),
          SliverFillRemaining(
            child: HomeCategories(),
          )
        ],
      ),
    );
  }
}
