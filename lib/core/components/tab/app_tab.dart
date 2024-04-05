//? Built-in Dart Packages

//? Internal Packages
import 'package:commit_m/core/components/tab/models/tab_item.dart';
import 'package:commit_m/core/components/tab/widgets/tab_bar.dart';
import 'package:commit_m/core/components/tab/widgets/tab_item.dart';

//? External Packages
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/*
 * Widget
 * _______________________________________________________________________________
 */
class AppTab extends HookWidget {
  /*
   * Constructor
   * _______________________________________________________________________________
   */
  const AppTab({
    super.key,
    required this.items,
    this.initialIndex = 0,
    this.indicatorWeight = 2,
    this.controller,
    this.isScrollable,
    this.indicatorSize,
    this.labelPadding,
    this.indicatorPadding,
    this.dividerColor,
    this.indicatorColor,
    this.onTap,
    this.physics,
    this.onTabChanged,
    this.margin,
    bool isSubTab = false,
  });

  /*
   * Arguments
   * _______________________________________________________________________________
   */
  final List<AppTabItem> items;
  final int initialIndex;
  final double indicatorWeight;
  final TabController? controller;
  final bool? isScrollable;
  final TabBarIndicatorSize? indicatorSize;
  final EdgeInsetsGeometry? labelPadding;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? indicatorPadding;
  final Color? dividerColor;
  final Color? indicatorColor;
  final ScrollPhysics? physics;
  final Function(int)? onTap;
  final OnTabChanged? onTabChanged;

  /*
   * UI Building
   * _______________________________________________________________________________
   */
  @override
  Widget build(BuildContext context) {
    // variables
    final currentIndex = useState(initialIndex);

    final tabController = controller ??
        useTabController(
          initialLength: items.length,
          initialIndex: initialIndex,
        );

    // functions
    useEffect(() {
      void tabListener() {
        currentIndex.value = tabController.index;
        if (!tabController.indexIsChanging) {
          onTabChanged?.call(tabController.index);
        }
      }

      tabController.addListener(tabListener);

      return () => tabController.removeListener(tabListener);
    }, []);

    // UI
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomTabBar(
                indicatorColor: indicatorColor,
                controller: tabController,
                margin: margin,
                tabs: [
                  ...items.map(
                    (item) {
                      final isSelected = currentIndex.value == items.indexOf(item);

                      final child = TabBarItem(
                        isSelected: isSelected,
                        item: item,
                      );

                      return Tab(
                        child: child,
                      );
                    },
                  )
                ],
                dividerColor: dividerColor,
                indicatorPadding: indicatorPadding,
                indicatorSize: indicatorSize,
                isScrollable: isScrollable,
                labelPadding: labelPadding,
                onTap: onTap,
                indicatorWeight: indicatorWeight,
              ),
            ),
          ],
        ),
        //* Wallet Contents
        Expanded(
          child: TabBarView(
            controller: tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              ...items.map((e) => NotificationListener(
                    onNotification: (notification) {
                      if (notification is KeepAliveNotification) {
                        return true;
                      }
                      return false;
                    },
                    child: e.content,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}

typedef OnTabChanged = FutureOr<void> Function(int index);
