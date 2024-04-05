//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/collections/assets/images.dart';
import 'package:commit_m/core/components/tab/app_tab.dart';
import 'package:commit_m/core/components/tab/models/tab_item.dart';
import 'package:commit_m/core/theme/extension/context_color.dart';
import 'package:flutter/cupertino.dart';

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
                content: SizedBox(),
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
