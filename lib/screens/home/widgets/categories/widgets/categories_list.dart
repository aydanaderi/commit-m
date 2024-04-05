//? Built-in Dart Packages

//? Internal Packages
import 'package:auto_route/auto_route.dart';
import 'package:commit_m/core/utils/routes/routes.dart';
import 'package:commit_m/screens/home/models/home_models.dart';
import 'package:commit_m/screens/home/widgets/categories/widgets/item.dart';
import 'package:flutter/cupertino.dart';

//? External Packages
import 'package:flutter/material.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class HomeCategoriesList extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const HomeCategoriesList({
    super.key,
    required this.items,
  });

  /*
   * Arguments
   * _______________________________________________________________________________
   */
  final List<CategoriesItem> items;

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    /*
   * Methods
   * __________________________________________________________________________
   */
    //redirect to main product screen
    void redirectToProductMain(){
      AutoRouter.of(context).push(const MainProductRoute());
    }

    // UI
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 7,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return HomeCategoriesItem(
          item: item,
          onTap: redirectToProductMain,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 17,
        );
      },
      itemCount: items.length,
    );
  }
}
