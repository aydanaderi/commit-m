//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/screens/home/widgets/home.dart';

//? External Packages
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
@RoutePage()
class HomeScreen extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const HomeScreen({
    super.key,
  });

  /*
   * UI Building
   * __________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // UI
    return const SafeArea(
      child: Scaffold(
        body: Home(),
      ),
    );
  }
}
