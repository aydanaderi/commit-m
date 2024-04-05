//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/collections/assets/images.dart';
import 'package:commit_m/core/components/tab/app_tab.dart';
import 'package:commit_m/core/components/tab/models/tab_item.dart';
import 'package:commit_m/core/theme/extension/context_color.dart';
import 'package:commit_m/screens/home/models/home_models.dart';
import 'package:commit_m/screens/home/widgets/categories/widgets/categories_list.dart';

//? External Packages
import 'package:flutter/material.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class HomeCategories extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const HomeCategories({
    super.key,
  });

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // UI
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        Text(
          "Categories",
          style: context.titleLarge.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Expanded(
          child: AppTab(
            items: [
              AppTabItem(
                name: "Cappuccino",
                iconPath: cappuccino,
                content: HomeCategoriesList(
                  items: [
                    CategoriesItem(
                      name: 'Cappuccino',
                      imagePath: firstCup,
                      detail: 'With Chocolate',
                      score: 4.9,
                      count: '50 K',
                    ),
                    CategoriesItem(
                      name: 'Cappuccino',
                      imagePath: secondCup,
                      detail: 'With Low Fat Milk',
                      score: 4.7,
                      count: '45 K',
                    ),
                  ],
                ),
              ),
              AppTabItem(
                name: "Cold Brew",
                iconPath: coldBrew,
                content: SizedBox(),
              ),
              AppTabItem(
                name: "Expresso",
                iconPath: express,
                content: SizedBox(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
