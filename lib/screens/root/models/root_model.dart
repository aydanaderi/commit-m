import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_model.freezed.dart';

@freezed
class NavigationItem with _$NavigationItem {
  const factory NavigationItem({
    required int groupValue,
    required int value,
    required String title,
    required String icon,
  }) = _NavigationItem;
}
