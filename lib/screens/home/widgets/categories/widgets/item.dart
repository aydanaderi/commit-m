//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/theme/extension/context_color.dart';
import 'package:commit_m/screens/home/models/home_models.dart';
import 'package:commit_m/screens/home/widgets/categories/widgets/add_item.dart';
import 'package:commit_m/screens/home/widgets/categories/widgets/score.dart';
import 'package:flutter/cupertino.dart';

//? External Packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class HomeCategoriesItem extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const HomeCategoriesItem({
    super.key,
    required this.item,
  });

  /*
   * Arguments
   * _______________________________________________________________________________
   */
  final CategoriesItem item;

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // UI
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.colorScheme.onPrimary,
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.primary.withOpacity(
                  0.25,
                ),
                blurRadius: 7,
              ),
            ],
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              7.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: SvgPicture.asset(
                        item.imagePath,
                        height: 99,
                        width: 129,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: HomeItemScore(
                        score: item.score,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: context.bodyLarge.copyWith(
                            color: context.colorScheme.primary,
                          ),
                        ),
                        Text(
                          item.detail,
                          style: context.displaySmall.copyWith(
                            color: context.colorScheme.primary,
                          ),
                        ),
                        Text(
                          item.count,
                          style: context.titleSmall.copyWith(
                            color: context.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    HomeAddItem(
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
