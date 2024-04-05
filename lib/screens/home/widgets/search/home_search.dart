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
class HomeSearch extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const HomeSearch({
    super.key,
  });

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // UI
    return AppInput(
      hintText: 'Search Coffee..',
      prefixIcon: Icon(
        Icons.search,
        size: 24,
        color: context.colorScheme.outline,
      ),
      suffixIcon: Icon(
        Icons.menu,
        size: 24,
        color: context.colorScheme.secondary,
      ),
    );
  }
}
