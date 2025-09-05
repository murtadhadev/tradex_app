// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banners_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannersResponseModel _$BannersResponseModelFromJson(Map<String, dynamic> json) {
  return _BannersResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BannersResponseModel {
  bool get success => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  List<BannerModel> get data => throw _privateConstructorUsedError;

  /// Serializes this BannersResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannersResponseModelCopyWith<BannersResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersResponseModelCopyWith<$Res> {
  factory $BannersResponseModelCopyWith(BannersResponseModel value,
          $Res Function(BannersResponseModel) then) =
      _$BannersResponseModelCopyWithImpl<$Res, BannersResponseModel>;
  @useResult
  $Res call({bool success, int code, List<BannerModel> data});
}

/// @nodoc
class _$BannersResponseModelCopyWithImpl<$Res,
        $Val extends BannersResponseModel>
    implements $BannersResponseModelCopyWith<$Res> {
  _$BannersResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannersResponseModelImplCopyWith<$Res>
    implements $BannersResponseModelCopyWith<$Res> {
  factory _$$BannersResponseModelImplCopyWith(_$BannersResponseModelImpl value,
          $Res Function(_$BannersResponseModelImpl) then) =
      __$$BannersResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int code, List<BannerModel> data});
}

/// @nodoc
class __$$BannersResponseModelImplCopyWithImpl<$Res>
    extends _$BannersResponseModelCopyWithImpl<$Res, _$BannersResponseModelImpl>
    implements _$$BannersResponseModelImplCopyWith<$Res> {
  __$$BannersResponseModelImplCopyWithImpl(_$BannersResponseModelImpl _value,
      $Res Function(_$BannersResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$BannersResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannersResponseModelImpl implements _BannersResponseModel {
  const _$BannersResponseModelImpl(
      {required this.success,
      required this.code,
      final List<BannerModel> data = const []})
      : _data = data;

  factory _$BannersResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannersResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final int code;
  final List<BannerModel> _data;
  @override
  @JsonKey()
  List<BannerModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BannersResponseModel(success: $success, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, code, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BannersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannersResponseModelImplCopyWith<_$BannersResponseModelImpl>
      get copyWith =>
          __$$BannersResponseModelImplCopyWithImpl<_$BannersResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannersResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BannersResponseModel implements BannersResponseModel {
  const factory _BannersResponseModel(
      {required final bool success,
      required final int code,
      final List<BannerModel> data}) = _$BannersResponseModelImpl;

  factory _BannersResponseModel.fromJson(Map<String, dynamic> json) =
      _$BannersResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  int get code;
  @override
  List<BannerModel> get data;

  /// Create a copy of BannersResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannersResponseModelImplCopyWith<_$BannersResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
