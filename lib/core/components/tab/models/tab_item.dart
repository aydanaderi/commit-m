import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_item.freezed.dart';

@freezed
class AppTabItem with _$AppTabItem {
  const factory AppTabItem({
    required String name,
    String? iconPath,
    required Widget content,
  }) = _AppTabItem;
}
