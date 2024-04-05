//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/screens/root/models/root_model.dart';
import 'package:commit_m/screens/root/widgets/bottom_naviagtion/bottom_naviagtion_item.dart';

//? External Packages
import 'package:flutter/material.dart';

/*
 * Class
 * ____________________________________________________________________________
 */
class CustomBottomNavigationBarItem extends BottomNavigationBarItem {
  /*
   * Arguments
   * __________________________________________________________________________
   */

  final NavigationItem item;

  /*
   * Constructor
   * __________________________________________________________________________
   */
  CustomBottomNavigationBarItem({
    required this.item,
  }) : super(
    icon: BottomNavItem(
      item: item,
    ),
    label: '',
  );
}
