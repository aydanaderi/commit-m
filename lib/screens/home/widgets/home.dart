//? Built-in Dart Packages

//? Internal Packages
import 'package:flutter/material.dart';

//? External Packages
import 'package:commit_m/screens/home/widgets/header/header.dart';
import 'package:commit_m/core/collections/constant/constant.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
class Home extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const Home({
    super.key,
  });

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // UI
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      child: HomeHeader(),
    );
  }
}
