//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/theme/extension/context_color.dart';
import 'package:commit_m/screens/root/models/root_model.dart';

//? External Packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class BottomNavItem extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const BottomNavItem({
    super.key,
    required this.item,
  });
  /*
   * UI Building
   * __________________________________________________________________________
   */
  final NavigationItem item;

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // Variable
    final isSelected = item.value == item.groupValue;

    final color = isSelected
        ? context.colorScheme.secondary
        : context.colorScheme.onSurface;
    // UI
    return Column(
      children: [
        if (isSelected)
          SizedBox(
            height: 24,
            width: 24,
            child: Divider(
              color: context.colorScheme.secondary,

              thickness: 3,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: InkWell(
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  item.icon,
                  height: 24,
                  width: 24,
                  color: color,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  item.title,
                  style: context.labelSmall.copyWith(
                    color: color,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
