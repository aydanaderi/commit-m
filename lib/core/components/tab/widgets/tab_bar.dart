//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/theme/extension/context_color.dart';

//? External Packages
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/*
 * Widget
 * _______________________________________________________________________________
 */

class CustomTabBar extends HookWidget {
  /*
   * Constructor
   * _______________________________________________________________________________
   */

  const CustomTabBar({
    required this.tabs,
    this.controller,
    this.tabAlignment,
    this.isScrollable,
    this.indicatorSize,
    this.labelPadding,
    this.indicatorPadding,
    this.dividerColor,
    this.onTap,
    super.key,
    this.indicatorWeight = 2.0,
    this.indicatorColor,
    this.margin,
  });

  /*
   * Arguments
   * _______________________________________________________________________________
   */
  final List<Widget> tabs;
  final TabController? controller;
  final bool? isScrollable;
  final TabBarIndicatorSize? indicatorSize;
  final EdgeInsetsGeometry? labelPadding;
  final EdgeInsetsGeometry? indicatorPadding;
  final Color? dividerColor;
  final Function(int)? onTap;
  final double indicatorWeight;
  final Color? indicatorColor;
  final EdgeInsetsGeometry? margin;
  final TabAlignment? tabAlignment;

  /*
   * UI Building
   * _______________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // variables
    final controller =
        this.controller ?? useTabController(initialLength: tabs.length);

    // functions
    useEffect(() {
      void listener() {
        FocusManager.instance.primaryFocus?.unfocus();
      }

      controller.addListener(listener);

      return () => controller.removeListener(listener);
    }, []);

    return TabBar(
      tabAlignment: tabAlignment ?? TabAlignment.start,
      tabs: tabs,
      onTap: onTap,
      controller: controller,
      isScrollable: isScrollable ?? true,
      indicator:BoxDecoration(
        color: context.colorScheme.secondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(33),
        ),
      ),
      indicatorSize: indicatorSize ?? TabBarIndicatorSize.tab,
      overlayColor: MaterialStateProperty.all(Colors.transparent,),
      splashFactory: NoSplash.splashFactory,
      dividerColor: Colors.transparent,
      indicatorWeight: indicatorWeight,
      indicatorColor: indicatorColor,
      labelStyle: context.labelSmall.copyWith(
        color: context.colorScheme.onPrimary,
      ),
      unselectedLabelStyle: context.labelSmall.copyWith(
        color: context.colorScheme.primary,
      ),
    );
  }
}
