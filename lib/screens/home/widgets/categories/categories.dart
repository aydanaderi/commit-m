//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/components/input/input.dart';
import 'package:commit_m/core/theme/extension/context_color.dart';

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
      ],
    );
  }
}
