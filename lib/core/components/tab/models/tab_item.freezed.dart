// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppTabItem {
  String get name => throw _privateConstructorUsedError;
  String? get iconPath => throw _privateConstructorUsedError;
  Widget get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppTabItemCopyWith<AppTabItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTabItemCopyWith<$Res> {
  factory $AppTabItemCopyWith(
          AppTabItem value, $Res Function(AppTabItem) then) =
      _$AppTabItemCopyWithImpl<$Res, AppTabItem>;
  @useResult
  $Res call({String name, String? iconPath, Widget content});
}

/// @nodoc
class _$AppTabItemCopyWithImpl<$Res, $Val extends AppTabItem>
    implements $AppTabItemCopyWith<$Res> {
  _$AppTabItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = freezed,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppTabItemImplCopyWith<$Res>
    implements $AppTabItemCopyWith<$Res> {
  factory _$$AppTabItemImplCopyWith(
          _$AppTabItemImpl value, $Res Function(_$AppTabItemImpl) then) =
      __$$AppTabItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? iconPath, Widget content});
}

/// @nodoc
class __$$AppTabItemImplCopyWithImpl<$Res>
    extends _$AppTabItemCopyWithImpl<$Res, _$AppTabItemImpl>
    implements _$$AppTabItemImplCopyWith<$Res> {
  __$$AppTabItemImplCopyWithImpl(
      _$AppTabItemImpl _value, $Res Function(_$AppTabItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = freezed,
    Object? content = null,
  }) {
    return _then(_$AppTabItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: freezed == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$AppTabItemImpl implements _AppTabItem {
  const _$AppTabItemImpl(
      {required this.name, this.iconPath, required this.content});

  @override
  final String name;
  @override
  final String? iconPath;
  @override
  final Widget content;

  @override
  String toString() {
    return 'AppTabItem(name: $name, iconPath: $iconPath, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppTabItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, iconPath, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppTabItemImplCopyWith<_$AppTabItemImpl> get copyWith =>
      __$$AppTabItemImplCopyWithImpl<_$AppTabItemImpl>(this, _$identity);
}

abstract class _AppTabItem implements AppTabItem {
  const factory _AppTabItem(
      {required final String name,
      final String? iconPath,
      required final Widget content}) = _$AppTabItemImpl;

  @override
  String get name;
  @override
  String? get iconPath;
  @override
  Widget get content;
  @override
  @JsonKey(ignore: true)
  _$$AppTabItemImplCopyWith<_$AppTabItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
