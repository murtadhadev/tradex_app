// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) {
  return _HomeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HomeResponseModel {
  bool get success => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  HomeDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this HomeResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeResponseModelCopyWith<HomeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseModelCopyWith<$Res> {
  factory $HomeResponseModelCopyWith(
          HomeResponseModel value, $Res Function(HomeResponseModel) then) =
      _$HomeResponseModelCopyWithImpl<$Res, HomeResponseModel>;
  @useResult
  $Res call({bool success, int code, HomeDataModel data});

  $HomeDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeResponseModelCopyWithImpl<$Res, $Val extends HomeResponseModel>
    implements $HomeResponseModelCopyWith<$Res> {
  _$HomeResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeResponseModel
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
              as HomeDataModel,
    ) as $Val);
  }

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeDataModelCopyWith<$Res> get data {
    return $HomeDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeResponseModelImplCopyWith<$Res>
    implements $HomeResponseModelCopyWith<$Res> {
  factory _$$HomeResponseModelImplCopyWith(_$HomeResponseModelImpl value,
          $Res Function(_$HomeResponseModelImpl) then) =
      __$$HomeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int code, HomeDataModel data});

  @override
  $HomeDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$HomeResponseModelImplCopyWithImpl<$Res>
    extends _$HomeResponseModelCopyWithImpl<$Res, _$HomeResponseModelImpl>
    implements _$$HomeResponseModelImplCopyWith<$Res> {
  __$$HomeResponseModelImplCopyWithImpl(_$HomeResponseModelImpl _value,
      $Res Function(_$HomeResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$HomeResponseModelImpl(
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
              as HomeDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseModelImpl implements _HomeResponseModel {
  const _$HomeResponseModelImpl(
      {required this.success, required this.code, required this.data});

  factory _$HomeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final int code;
  @override
  final HomeDataModel data;

  @override
  String toString() {
    return 'HomeResponseModel(success: $success, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, code, data);

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      __$$HomeResponseModelImplCopyWithImpl<_$HomeResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HomeResponseModel implements HomeResponseModel {
  const factory _HomeResponseModel(
      {required final bool success,
      required final int code,
      required final HomeDataModel data}) = _$HomeResponseModelImpl;

  factory _HomeResponseModel.fromJson(Map<String, dynamic> json) =
      _$HomeResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  int get code;
  @override
  HomeDataModel get data;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) {
  return _HomeDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeDataModel {
  @JsonKey(name: 'most_popular_products')
  List<ProductModel> get mostPopularProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'best_selling_products')
  List<ProductModel> get bestSellingProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'best_clients')
  List<ClientModel> get bestClients => throw _privateConstructorUsedError;

  /// Serializes this HomeDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeDataModelCopyWith<HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataModelCopyWith<$Res> {
  factory $HomeDataModelCopyWith(
          HomeDataModel value, $Res Function(HomeDataModel) then) =
      _$HomeDataModelCopyWithImpl<$Res, HomeDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'most_popular_products')
      List<ProductModel> mostPopularProducts,
      @JsonKey(name: 'best_selling_products')
      List<ProductModel> bestSellingProducts,
      @JsonKey(name: 'best_clients') List<ClientModel> bestClients});
}

/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res, $Val extends HomeDataModel>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostPopularProducts = null,
    Object? bestSellingProducts = null,
    Object? bestClients = null,
  }) {
    return _then(_value.copyWith(
      mostPopularProducts: null == mostPopularProducts
          ? _value.mostPopularProducts
          : mostPopularProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      bestSellingProducts: null == bestSellingProducts
          ? _value.bestSellingProducts
          : bestSellingProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      bestClients: null == bestClients
          ? _value.bestClients
          : bestClients // ignore: cast_nullable_to_non_nullable
              as List<ClientModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataModelImplCopyWith<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  factory _$$HomeDataModelImplCopyWith(
          _$HomeDataModelImpl value, $Res Function(_$HomeDataModelImpl) then) =
      __$$HomeDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'most_popular_products')
      List<ProductModel> mostPopularProducts,
      @JsonKey(name: 'best_selling_products')
      List<ProductModel> bestSellingProducts,
      @JsonKey(name: 'best_clients') List<ClientModel> bestClients});
}

/// @nodoc
class __$$HomeDataModelImplCopyWithImpl<$Res>
    extends _$HomeDataModelCopyWithImpl<$Res, _$HomeDataModelImpl>
    implements _$$HomeDataModelImplCopyWith<$Res> {
  __$$HomeDataModelImplCopyWithImpl(
      _$HomeDataModelImpl _value, $Res Function(_$HomeDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mostPopularProducts = null,
    Object? bestSellingProducts = null,
    Object? bestClients = null,
  }) {
    return _then(_$HomeDataModelImpl(
      mostPopularProducts: null == mostPopularProducts
          ? _value._mostPopularProducts
          : mostPopularProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      bestSellingProducts: null == bestSellingProducts
          ? _value._bestSellingProducts
          : bestSellingProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      bestClients: null == bestClients
          ? _value._bestClients
          : bestClients // ignore: cast_nullable_to_non_nullable
              as List<ClientModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDataModelImpl implements _HomeDataModel {
  const _$HomeDataModelImpl(
      {@JsonKey(name: 'most_popular_products')
      final List<ProductModel> mostPopularProducts = const [],
      @JsonKey(name: 'best_selling_products')
      final List<ProductModel> bestSellingProducts = const [],
      @JsonKey(name: 'best_clients')
      final List<ClientModel> bestClients = const []})
      : _mostPopularProducts = mostPopularProducts,
        _bestSellingProducts = bestSellingProducts,
        _bestClients = bestClients;

  factory _$HomeDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataModelImplFromJson(json);

  final List<ProductModel> _mostPopularProducts;
  @override
  @JsonKey(name: 'most_popular_products')
  List<ProductModel> get mostPopularProducts {
    if (_mostPopularProducts is EqualUnmodifiableListView)
      return _mostPopularProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostPopularProducts);
  }

  final List<ProductModel> _bestSellingProducts;
  @override
  @JsonKey(name: 'best_selling_products')
  List<ProductModel> get bestSellingProducts {
    if (_bestSellingProducts is EqualUnmodifiableListView)
      return _bestSellingProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSellingProducts);
  }

  final List<ClientModel> _bestClients;
  @override
  @JsonKey(name: 'best_clients')
  List<ClientModel> get bestClients {
    if (_bestClients is EqualUnmodifiableListView) return _bestClients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestClients);
  }

  @override
  String toString() {
    return 'HomeDataModel(mostPopularProducts: $mostPopularProducts, bestSellingProducts: $bestSellingProducts, bestClients: $bestClients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._mostPopularProducts, _mostPopularProducts) &&
            const DeepCollectionEquality()
                .equals(other._bestSellingProducts, _bestSellingProducts) &&
            const DeepCollectionEquality()
                .equals(other._bestClients, _bestClients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mostPopularProducts),
      const DeepCollectionEquality().hash(_bestSellingProducts),
      const DeepCollectionEquality().hash(_bestClients));

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      __$$HomeDataModelImplCopyWithImpl<_$HomeDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDataModelImplToJson(
      this,
    );
  }
}

abstract class _HomeDataModel implements HomeDataModel {
  const factory _HomeDataModel(
          {@JsonKey(name: 'most_popular_products')
          final List<ProductModel> mostPopularProducts,
          @JsonKey(name: 'best_selling_products')
          final List<ProductModel> bestSellingProducts,
          @JsonKey(name: 'best_clients') final List<ClientModel> bestClients}) =
      _$HomeDataModelImpl;

  factory _HomeDataModel.fromJson(Map<String, dynamic> json) =
      _$HomeDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'most_popular_products')
  List<ProductModel> get mostPopularProducts;
  @override
  @JsonKey(name: 'best_selling_products')
  List<ProductModel> get bestSellingProducts;
  @override
  @JsonKey(name: 'best_clients')
  List<ClientModel> get bestClients;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
