// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesItem {
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesItemCopyWith<CategoriesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesItemCopyWith<$Res> {
  factory $CategoriesItemCopyWith(
          CategoriesItem value, $Res Function(CategoriesItem) then) =
      _$CategoriesItemCopyWithImpl<$Res, CategoriesItem>;
  @useResult
  $Res call(
      {String name,
      String imagePath,
      String detail,
      String count,
      double score});
}

/// @nodoc
class _$CategoriesItemCopyWithImpl<$Res, $Val extends CategoriesItem>
    implements $CategoriesItemCopyWith<$Res> {
  _$CategoriesItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
    Object? detail = null,
    Object? count = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesItemImplCopyWith<$Res>
    implements $CategoriesItemCopyWith<$Res> {
  factory _$$CategoriesItemImplCopyWith(_$CategoriesItemImpl value,
          $Res Function(_$CategoriesItemImpl) then) =
      __$$CategoriesItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String imagePath,
      String detail,
      String count,
      double score});
}

/// @nodoc
class __$$CategoriesItemImplCopyWithImpl<$Res>
    extends _$CategoriesItemCopyWithImpl<$Res, _$CategoriesItemImpl>
    implements _$$CategoriesItemImplCopyWith<$Res> {
  __$$CategoriesItemImplCopyWithImpl(
      _$CategoriesItemImpl _value, $Res Function(_$CategoriesItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
    Object? detail = null,
    Object? count = null,
    Object? score = null,
  }) {
    return _then(_$CategoriesItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CategoriesItemImpl implements _CategoriesItem {
  const _$CategoriesItemImpl(
      {required this.name,
      required this.imagePath,
      required this.detail,
      required this.count,
      required this.score});

  @override
  final String name;
  @override
  final String imagePath;
  @override
  final String detail;
  @override
  final String count;
  @override
  final double score;

  @override
  String toString() {
    return 'CategoriesItem(name: $name, imagePath: $imagePath, detail: $detail, count: $count, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, imagePath, detail, count, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesItemImplCopyWith<_$CategoriesItemImpl> get copyWith =>
      __$$CategoriesItemImplCopyWithImpl<_$CategoriesItemImpl>(
          this, _$identity);
}

abstract class _CategoriesItem implements CategoriesItem {
  const factory _CategoriesItem(
      {required final String name,
      required final String imagePath,
      required final String detail,
      required final String count,
      required final double score}) = _$CategoriesItemImpl;

  @override
  String get name;
  @override
  String get imagePath;
  @override
  String get detail;
  @override
  String get count;
  @override
  double get score;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesItemImplCopyWith<_$CategoriesItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
