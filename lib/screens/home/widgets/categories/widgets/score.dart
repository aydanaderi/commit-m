//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/theme/extension/context_color.dart';

//? External Packages
import 'package:flutter/material.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class HomeItemScore extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const HomeItemScore({
    super.key,
    required this.score,
  });

  /*
   * Arguments
   * _______________________________________________________________________________
   */
  final double score;

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // UI
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: context.colorScheme.secondary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          4.0,
        ),
        child: Row(
          children: [
            Icon(
              Icons.star,
              size: 8,
              color: context.colorScheme.onPrimary,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              score.toString(),
              style: context.bodySmall.copyWith(
                color: context.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
