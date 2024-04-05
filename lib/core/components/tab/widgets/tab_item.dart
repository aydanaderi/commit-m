//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/components/tab/models/tab_item.dart';
import 'package:commit_m/core/theme/extension/context_color.dart';

//? External Packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class TabBarItem extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const TabBarItem({
    super.key,
    required this.item,
    required this.isSelected,
  });

  /*
   * Arguments
   * _______________________________________________________________________________
   */
  final AppTabItem item;
  final bool isSelected;

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    //Variable
    final color = isSelected
        ? context.colorScheme.onPrimary
        : context.colorScheme.primary;
    // UI
    return Row(
      children: [
        if (item.iconPath != null)
          SvgPicture.asset(
            item.iconPath ?? '',
            height: 16,
            width: 16,
            color: color,
          ),
        const SizedBox(
          width: 4,
        ),
        Text(
          item.name,
          style: context.labelSmall.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}
