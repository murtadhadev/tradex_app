// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) {
  return _ClientModel.fromJson(json);
}

/// @nodoc
mixin _$ClientModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_type')
  List<BusinessTypeModel> get businessType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'company_phone')
  String? get companyPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_country_label')
  String? get companyCountryLabel => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count')
  int get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_verified')
  bool get isVerified => throw _privateConstructorUsedError;

  /// Serializes this ClientModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientModelCopyWith<ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientModelCopyWith<$Res> {
  factory $ClientModelCopyWith(
          ClientModel value, $Res Function(ClientModel) then) =
      _$ClientModelCopyWithImpl<$Res, ClientModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String phone,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'business_type') List<BusinessTypeModel> businessType,
      @JsonKey(name: 'company_phone') String? companyPhone,
      @JsonKey(name: 'company_country_label') String? companyCountryLabel,
      String? latitude,
      String? longitude,
      String? logo,
      double rating,
      @JsonKey(name: 'rating_count') int ratingCount,
      @JsonKey(name: 'is_verified') bool isVerified});
}

/// @nodoc
class _$ClientModelCopyWithImpl<$Res, $Val extends ClientModel>
    implements $ClientModelCopyWith<$Res> {
  _$ClientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? companyName = freezed,
    Object? businessType = null,
    Object? companyPhone = freezed,
    Object? companyCountryLabel = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? logo = freezed,
    Object? rating = null,
    Object? ratingCount = null,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessType: null == businessType
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as List<BusinessTypeModel>,
      companyPhone: freezed == companyPhone
          ? _value.companyPhone
          : companyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      companyCountryLabel: freezed == companyCountryLabel
          ? _value.companyCountryLabel
          : companyCountryLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientModelImplCopyWith<$Res>
    implements $ClientModelCopyWith<$Res> {
  factory _$$ClientModelImplCopyWith(
          _$ClientModelImpl value, $Res Function(_$ClientModelImpl) then) =
      __$$ClientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String phone,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'business_type') List<BusinessTypeModel> businessType,
      @JsonKey(name: 'company_phone') String? companyPhone,
      @JsonKey(name: 'company_country_label') String? companyCountryLabel,
      String? latitude,
      String? longitude,
      String? logo,
      double rating,
      @JsonKey(name: 'rating_count') int ratingCount,
      @JsonKey(name: 'is_verified') bool isVerified});
}

/// @nodoc
class __$$ClientModelImplCopyWithImpl<$Res>
    extends _$ClientModelCopyWithImpl<$Res, _$ClientModelImpl>
    implements _$$ClientModelImplCopyWith<$Res> {
  __$$ClientModelImplCopyWithImpl(
      _$ClientModelImpl _value, $Res Function(_$ClientModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? companyName = freezed,
    Object? businessType = null,
    Object? companyPhone = freezed,
    Object? companyCountryLabel = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? logo = freezed,
    Object? rating = null,
    Object? ratingCount = null,
    Object? isVerified = null,
  }) {
    return _then(_$ClientModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessType: null == businessType
          ? _value._businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as List<BusinessTypeModel>,
      companyPhone: freezed == companyPhone
          ? _value.companyPhone
          : companyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      companyCountryLabel: freezed == companyCountryLabel
          ? _value.companyCountryLabel
          : companyCountryLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientModelImpl implements _ClientModel {
  const _$ClientModelImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      @JsonKey(name: 'company_name') this.companyName,
      @JsonKey(name: 'business_type')
      final List<BusinessTypeModel> businessType = const [],
      @JsonKey(name: 'company_phone') this.companyPhone,
      @JsonKey(name: 'company_country_label') this.companyCountryLabel,
      this.latitude,
      this.longitude,
      this.logo,
      this.rating = 0.0,
      @JsonKey(name: 'rating_count') this.ratingCount = 0,
      @JsonKey(name: 'is_verified') this.isVerified = false})
      : _businessType = businessType;

  factory _$ClientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  final List<BusinessTypeModel> _businessType;
  @override
  @JsonKey(name: 'business_type')
  List<BusinessTypeModel> get businessType {
    if (_businessType is EqualUnmodifiableListView) return _businessType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businessType);
  }

  @override
  @JsonKey(name: 'company_phone')
  final String? companyPhone;
  @override
  @JsonKey(name: 'company_country_label')
  final String? companyCountryLabel;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? logo;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey(name: 'rating_count')
  final int ratingCount;
  @override
  @JsonKey(name: 'is_verified')
  final bool isVerified;

  @override
  String toString() {
    return 'ClientModel(id: $id, name: $name, email: $email, phone: $phone, companyName: $companyName, businessType: $businessType, companyPhone: $companyPhone, companyCountryLabel: $companyCountryLabel, latitude: $latitude, longitude: $longitude, logo: $logo, rating: $rating, ratingCount: $ratingCount, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality()
                .equals(other._businessType, _businessType) &&
            (identical(other.companyPhone, companyPhone) ||
                other.companyPhone == companyPhone) &&
            (identical(other.companyCountryLabel, companyCountryLabel) ||
                other.companyCountryLabel == companyCountryLabel) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      phone,
      companyName,
      const DeepCollectionEquality().hash(_businessType),
      companyPhone,
      companyCountryLabel,
      latitude,
      longitude,
      logo,
      rating,
      ratingCount,
      isVerified);

  /// Create a copy of ClientModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientModelImplCopyWith<_$ClientModelImpl> get copyWith =>
      __$$ClientModelImplCopyWithImpl<_$ClientModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientModelImplToJson(
      this,
    );
  }
}

abstract class _ClientModel implements ClientModel {
  const factory _ClientModel(
      {required final int id,
      required final String name,
      required final String email,
      required final String phone,
      @JsonKey(name: 'company_name') final String? companyName,
      @JsonKey(name: 'business_type')
      final List<BusinessTypeModel> businessType,
      @JsonKey(name: 'company_phone') final String? companyPhone,
      @JsonKey(name: 'company_country_label') final String? companyCountryLabel,
      final String? latitude,
      final String? longitude,
      final String? logo,
      final double rating,
      @JsonKey(name: 'rating_count') final int ratingCount,
      @JsonKey(name: 'is_verified') final bool isVerified}) = _$ClientModelImpl;

  factory _ClientModel.fromJson(Map<String, dynamic> json) =
      _$ClientModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'business_type')
  List<BusinessTypeModel> get businessType;
  @override
  @JsonKey(name: 'company_phone')
  String? get companyPhone;
  @override
  @JsonKey(name: 'company_country_label')
  String? get companyCountryLabel;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get logo;
  @override
  double get rating;
  @override
  @JsonKey(name: 'rating_count')
  int get ratingCount;
  @override
  @JsonKey(name: 'is_verified')
  bool get isVerified;

  /// Create a copy of ClientModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientModelImplCopyWith<_$ClientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessTypeModel _$BusinessTypeModelFromJson(Map<String, dynamic> json) {
  return _BusinessTypeModel.fromJson(json);
}

/// @nodoc
mixin _$BusinessTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  /// Serializes this BusinessTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessTypeModelCopyWith<BusinessTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTypeModelCopyWith<$Res> {
  factory $BusinessTypeModelCopyWith(
          BusinessTypeModel value, $Res Function(BusinessTypeModel) then) =
      _$BusinessTypeModelCopyWithImpl<$Res, BusinessTypeModel>;
  @useResult
  $Res call({int id, String label});
}

/// @nodoc
class _$BusinessTypeModelCopyWithImpl<$Res, $Val extends BusinessTypeModel>
    implements $BusinessTypeModelCopyWith<$Res> {
  _$BusinessTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessTypeModelImplCopyWith<$Res>
    implements $BusinessTypeModelCopyWith<$Res> {
  factory _$$BusinessTypeModelImplCopyWith(_$BusinessTypeModelImpl value,
          $Res Function(_$BusinessTypeModelImpl) then) =
      __$$BusinessTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String label});
}

/// @nodoc
class __$$BusinessTypeModelImplCopyWithImpl<$Res>
    extends _$BusinessTypeModelCopyWithImpl<$Res, _$BusinessTypeModelImpl>
    implements _$$BusinessTypeModelImplCopyWith<$Res> {
  __$$BusinessTypeModelImplCopyWithImpl(_$BusinessTypeModelImpl _value,
      $Res Function(_$BusinessTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
  }) {
    return _then(_$BusinessTypeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessTypeModelImpl implements _BusinessTypeModel {
  const _$BusinessTypeModelImpl({required this.id, required this.label});

  factory _$BusinessTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessTypeModelImplFromJson(json);

  @override
  final int id;
  @override
  final String label;

  @override
  String toString() {
    return 'BusinessTypeModel(id: $id, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, label);

  /// Create a copy of BusinessTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTypeModelImplCopyWith<_$BusinessTypeModelImpl> get copyWith =>
      __$$BusinessTypeModelImplCopyWithImpl<_$BusinessTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTypeModelImplToJson(
      this,
    );
  }
}

abstract class _BusinessTypeModel implements BusinessTypeModel {
  const factory _BusinessTypeModel(
      {required final int id,
      required final String label}) = _$BusinessTypeModelImpl;

  factory _BusinessTypeModel.fromJson(Map<String, dynamic> json) =
      _$BusinessTypeModelImpl.fromJson;

  @override
  int get id;
  @override
  String get label;

  /// Create a copy of BusinessTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTypeModelImplCopyWith<_$BusinessTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
