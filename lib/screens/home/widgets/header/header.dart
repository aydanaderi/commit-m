//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/collections/assets/images.dart';
import 'package:commit_m/core/theme/extension/context_color.dart';

//? External Packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class HomeHeader extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const HomeHeader({
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
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              profile,
              width: 60,
              height: 60,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 20,
                  color: context.colorScheme.secondary,
                ),
                Text(
                  "Bintara, Bekasi",
                  style: context.labelSmall.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
              ],
            ),
            Badge(
              offset: const Offset(-5, 4),
              padding: EdgeInsets.zero,
              smallSize: 6,
              largeSize: 6,
              label: Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: context.colorScheme.error,
                  shape: BoxShape.circle,
                ),
              ),
              child: const Icon(
                Icons.notifications_none_outlined,
                size: 24,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          "Good morning, Dityo",
          style: context.titleLarge.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
