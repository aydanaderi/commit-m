//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/theme/extension/context_color.dart';

//? External Packages
import 'package:flutter/material.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class HomeAddItem extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const HomeAddItem({
    super.key,
    required this.onTap,
  });

  /*
   * Arguments
   * _______________________________________________________________________________
   */
  final GestureTapCallback onTap;

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // UI
    return GestureDetector(
      onTap: onTap,
      child: Material(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            100,
          ),
        ),
        color: context.colorScheme.secondary,
        child: Icon(
          Icons.add,
          size: 12,
          color: context.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
