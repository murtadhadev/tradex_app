// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitResponseModel _$InitResponseModelFromJson(Map<String, dynamic> json) {
  return _InitResponseModel.fromJson(json);
}

/// @nodoc
mixin _$InitResponseModel {
  bool get success => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  InitDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this InitResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitResponseModelCopyWith<InitResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitResponseModelCopyWith<$Res> {
  factory $InitResponseModelCopyWith(
          InitResponseModel value, $Res Function(InitResponseModel) then) =
      _$InitResponseModelCopyWithImpl<$Res, InitResponseModel>;
  @useResult
  $Res call({bool success, int code, InitDataModel data});

  $InitDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$InitResponseModelCopyWithImpl<$Res, $Val extends InitResponseModel>
    implements $InitResponseModelCopyWith<$Res> {
  _$InitResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitResponseModel
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
              as InitDataModel,
    ) as $Val);
  }

  /// Create a copy of InitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InitDataModelCopyWith<$Res> get data {
    return $InitDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitResponseModelImplCopyWith<$Res>
    implements $InitResponseModelCopyWith<$Res> {
  factory _$$InitResponseModelImplCopyWith(_$InitResponseModelImpl value,
          $Res Function(_$InitResponseModelImpl) then) =
      __$$InitResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int code, InitDataModel data});

  @override
  $InitDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitResponseModelImplCopyWithImpl<$Res>
    extends _$InitResponseModelCopyWithImpl<$Res, _$InitResponseModelImpl>
    implements _$$InitResponseModelImplCopyWith<$Res> {
  __$$InitResponseModelImplCopyWithImpl(_$InitResponseModelImpl _value,
      $Res Function(_$InitResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$InitResponseModelImpl(
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
              as InitDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitResponseModelImpl implements _InitResponseModel {
  const _$InitResponseModelImpl(
      {required this.success, required this.code, required this.data});

  factory _$InitResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final int code;
  @override
  final InitDataModel data;

  @override
  String toString() {
    return 'InitResponseModel(success: $success, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, code, data);

  /// Create a copy of InitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitResponseModelImplCopyWith<_$InitResponseModelImpl> get copyWith =>
      __$$InitResponseModelImplCopyWithImpl<_$InitResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitResponseModelImplToJson(
      this,
    );
  }
}

abstract class _InitResponseModel implements InitResponseModel {
  const factory _InitResponseModel(
      {required final bool success,
      required final int code,
      required final InitDataModel data}) = _$InitResponseModelImpl;

  factory _InitResponseModel.fromJson(Map<String, dynamic> json) =
      _$InitResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  int get code;
  @override
  InitDataModel get data;

  /// Create a copy of InitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitResponseModelImplCopyWith<_$InitResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InitDataModel _$InitDataModelFromJson(Map<String, dynamic> json) {
  return _InitDataModel.fromJson(json);
}

/// @nodoc
mixin _$InitDataModel {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<SubcategoryModel> get subcategories =>
      throw _privateConstructorUsedError;
  List<BrandModel> get brands => throw _privateConstructorUsedError;
  List<CurrencyModel> get currencies => throw _privateConstructorUsedError;
  List<CountryModel> get countries => throw _privateConstructorUsedError;

  /// Serializes this InitDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitDataModelCopyWith<InitDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitDataModelCopyWith<$Res> {
  factory $InitDataModelCopyWith(
          InitDataModel value, $Res Function(InitDataModel) then) =
      _$InitDataModelCopyWithImpl<$Res, InitDataModel>;
  @useResult
  $Res call(
      {List<CategoryModel> categories,
      List<SubcategoryModel> subcategories,
      List<BrandModel> brands,
      List<CurrencyModel> currencies,
      List<CountryModel> countries});
}

/// @nodoc
class _$InitDataModelCopyWithImpl<$Res, $Val extends InitDataModel>
    implements $InitDataModelCopyWith<$Res> {
  _$InitDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? subcategories = null,
    Object? brands = null,
    Object? currencies = null,
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubcategoryModel>,
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitDataModelImplCopyWith<$Res>
    implements $InitDataModelCopyWith<$Res> {
  factory _$$InitDataModelImplCopyWith(
          _$InitDataModelImpl value, $Res Function(_$InitDataModelImpl) then) =
      __$$InitDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel> categories,
      List<SubcategoryModel> subcategories,
      List<BrandModel> brands,
      List<CurrencyModel> currencies,
      List<CountryModel> countries});
}

/// @nodoc
class __$$InitDataModelImplCopyWithImpl<$Res>
    extends _$InitDataModelCopyWithImpl<$Res, _$InitDataModelImpl>
    implements _$$InitDataModelImplCopyWith<$Res> {
  __$$InitDataModelImplCopyWithImpl(
      _$InitDataModelImpl _value, $Res Function(_$InitDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? subcategories = null,
    Object? brands = null,
    Object? currencies = null,
    Object? countries = null,
  }) {
    return _then(_$InitDataModelImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubcategoryModel>,
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitDataModelImpl implements _InitDataModel {
  const _$InitDataModelImpl(
      {final List<CategoryModel> categories = const [],
      final List<SubcategoryModel> subcategories = const [],
      final List<BrandModel> brands = const [],
      final List<CurrencyModel> currencies = const [],
      final List<CountryModel> countries = const []})
      : _categories = categories,
        _subcategories = subcategories,
        _brands = brands,
        _currencies = currencies,
        _countries = countries;

  factory _$InitDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitDataModelImplFromJson(json);

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<SubcategoryModel> _subcategories;
  @override
  @JsonKey()
  List<SubcategoryModel> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  final List<BrandModel> _brands;
  @override
  @JsonKey()
  List<BrandModel> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  final List<CurrencyModel> _currencies;
  @override
  @JsonKey()
  List<CurrencyModel> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  final List<CountryModel> _countries;
  @override
  @JsonKey()
  List<CountryModel> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'InitDataModel(categories: $categories, subcategories: $subcategories, brands: $brands, currencies: $currencies, countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories) &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_subcategories),
      const DeepCollectionEquality().hash(_brands),
      const DeepCollectionEquality().hash(_currencies),
      const DeepCollectionEquality().hash(_countries));

  /// Create a copy of InitDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitDataModelImplCopyWith<_$InitDataModelImpl> get copyWith =>
      __$$InitDataModelImplCopyWithImpl<_$InitDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitDataModelImplToJson(
      this,
    );
  }
}

abstract class _InitDataModel implements InitDataModel {
  const factory _InitDataModel(
      {final List<CategoryModel> categories,
      final List<SubcategoryModel> subcategories,
      final List<BrandModel> brands,
      final List<CurrencyModel> currencies,
      final List<CountryModel> countries}) = _$InitDataModelImpl;

  factory _InitDataModel.fromJson(Map<String, dynamic> json) =
      _$InitDataModelImpl.fromJson;

  @override
  List<CategoryModel> get categories;
  @override
  List<SubcategoryModel> get subcategories;
  @override
  List<BrandModel> get brands;
  @override
  List<CurrencyModel> get currencies;
  @override
  List<CountryModel> get countries;

  /// Create a copy of InitDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitDataModelImplCopyWith<_$InitDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return _CurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'exchange_rate')
  String get exchangeRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;

  /// Serializes this CurrencyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
          CurrencyModel value, $Res Function(CurrencyModel) then) =
      _$CurrencyModelCopyWithImpl<$Res, CurrencyModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String code,
      String symbol,
      @JsonKey(name: 'exchange_rate') String exchangeRate,
      @JsonKey(name: 'is_default') bool isDefault});
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res, $Val extends CurrencyModel>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? symbol = null,
    Object? exchangeRate = null,
    Object? isDefault = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeRate: null == exchangeRate
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyModelImplCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$$CurrencyModelImplCopyWith(
          _$CurrencyModelImpl value, $Res Function(_$CurrencyModelImpl) then) =
      __$$CurrencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String code,
      String symbol,
      @JsonKey(name: 'exchange_rate') String exchangeRate,
      @JsonKey(name: 'is_default') bool isDefault});
}

/// @nodoc
class __$$CurrencyModelImplCopyWithImpl<$Res>
    extends _$CurrencyModelCopyWithImpl<$Res, _$CurrencyModelImpl>
    implements _$$CurrencyModelImplCopyWith<$Res> {
  __$$CurrencyModelImplCopyWithImpl(
      _$CurrencyModelImpl _value, $Res Function(_$CurrencyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? symbol = null,
    Object? exchangeRate = null,
    Object? isDefault = null,
  }) {
    return _then(_$CurrencyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeRate: null == exchangeRate
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyModelImpl implements _CurrencyModel {
  const _$CurrencyModelImpl(
      {required this.id,
      required this.name,
      required this.code,
      required this.symbol,
      @JsonKey(name: 'exchange_rate') required this.exchangeRate,
      @JsonKey(name: 'is_default') this.isDefault = false});

  factory _$CurrencyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String symbol;
  @override
  @JsonKey(name: 'exchange_rate')
  final String exchangeRate;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;

  @override
  String toString() {
    return 'CurrencyModel(id: $id, name: $name, code: $code, symbol: $symbol, exchangeRate: $exchangeRate, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.exchangeRate, exchangeRate) ||
                other.exchangeRate == exchangeRate) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, code, symbol, exchangeRate, isDefault);

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyModelImplCopyWith<_$CurrencyModelImpl> get copyWith =>
      __$$CurrencyModelImplCopyWithImpl<_$CurrencyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyModelImplToJson(
      this,
    );
  }
}

abstract class _CurrencyModel implements CurrencyModel {
  const factory _CurrencyModel(
      {required final int id,
      required final String name,
      required final String code,
      required final String symbol,
      @JsonKey(name: 'exchange_rate') required final String exchangeRate,
      @JsonKey(name: 'is_default') final bool isDefault}) = _$CurrencyModelImpl;

  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =
      _$CurrencyModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get symbol;
  @override
  @JsonKey(name: 'exchange_rate')
  String get exchangeRate;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyModelImplCopyWith<_$CurrencyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
          _$CountryModelImpl value, $Res Function(_$CountryModelImpl) then) =
      __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
      _$CountryModelImpl _value, $Res Function(_$CountryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CountryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryModelImpl implements _CountryModel {
  const _$CountryModelImpl({required this.id, required this.name});

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CountryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {required final int id, required final String name}) = _$CountryModelImpl;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
