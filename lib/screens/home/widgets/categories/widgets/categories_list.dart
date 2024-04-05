//? Built-in Dart Packages

//? Internal Packages
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
