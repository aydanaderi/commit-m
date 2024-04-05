import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_models.freezed.dart';

@freezed
class CategoriesItem with _$CategoriesItem {
  const factory CategoriesItem({
    required String name,
    required String imagePath,
    required String detail,
    required String count,
    required double score,
  }) = _CategoriesItem;
}
