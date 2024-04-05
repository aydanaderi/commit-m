//? Built-in Dart Packages


//? External Packages
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

/*
 * Widget
 * ____________________________________________________________________________
 */
@RoutePage()
class CardScreen extends StatelessWidget {
  /*
   * Constructor
   * __________________________________________________________________________
   */
  const CardScreen({
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
        body: Center(
          child: Text(
            'CARD',
          ),
        ),
      ),
    );
  }
}
