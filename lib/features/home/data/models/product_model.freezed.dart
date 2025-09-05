// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_quantity')
  int get minQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_quantity')
  int get maxQuantity => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'productMedias')
  List<ProductMediaModel> get productMedias =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favourite')
  bool get isFavourite => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cart')
  bool get isCart => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_name')
  String? get clientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  int? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_email')
  String? get clientEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_phone')
  String? get clientPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_company_name')
  String? get clientCompanyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_company_phone')
  String? get clientCompanyPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_logo')
  String? get clientLogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_discount')
  bool get haveDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_is_verified')
  bool get clientIsVerified => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count')
  int get ratingCount => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'min_quantity') int minQuantity,
      @JsonKey(name: 'max_quantity') int maxQuantity,
      String price,
      @JsonKey(name: 'productMedias') List<ProductMediaModel> productMedias,
      @JsonKey(name: 'is_favourite') bool isFavourite,
      @JsonKey(name: 'is_cart') bool isCart,
      @JsonKey(name: 'client_name') String? clientName,
      @JsonKey(name: 'client_id') int? clientId,
      @JsonKey(name: 'client_email') String? clientEmail,
      @JsonKey(name: 'client_phone') String? clientPhone,
      @JsonKey(name: 'client_company_name') String? clientCompanyName,
      @JsonKey(name: 'client_company_phone') String? clientCompanyPhone,
      @JsonKey(name: 'client_logo') String? clientLogo,
      @JsonKey(name: 'have_discount') bool haveDiscount,
      @JsonKey(name: 'is_available') bool isAvailable,
      @JsonKey(name: 'client_is_verified') bool clientIsVerified,
      double rating,
      @JsonKey(name: 'rating_count') int ratingCount,
      BrandModel? brand});

  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minQuantity = null,
    Object? maxQuantity = null,
    Object? price = null,
    Object? productMedias = null,
    Object? isFavourite = null,
    Object? isCart = null,
    Object? clientName = freezed,
    Object? clientId = freezed,
    Object? clientEmail = freezed,
    Object? clientPhone = freezed,
    Object? clientCompanyName = freezed,
    Object? clientCompanyPhone = freezed,
    Object? clientLogo = freezed,
    Object? haveDiscount = null,
    Object? isAvailable = null,
    Object? clientIsVerified = null,
    Object? rating = null,
    Object? ratingCount = null,
    Object? brand = freezed,
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
      minQuantity: null == minQuantity
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxQuantity: null == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      productMedias: null == productMedias
          ? _value.productMedias
          : productMedias // ignore: cast_nullable_to_non_nullable
              as List<ProductMediaModel>,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isCart: null == isCart
          ? _value.isCart
          : isCart // ignore: cast_nullable_to_non_nullable
              as bool,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientEmail: freezed == clientEmail
          ? _value.clientEmail
          : clientEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      clientPhone: freezed == clientPhone
          ? _value.clientPhone
          : clientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      clientCompanyName: freezed == clientCompanyName
          ? _value.clientCompanyName
          : clientCompanyName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientCompanyPhone: freezed == clientCompanyPhone
          ? _value.clientCompanyPhone
          : clientCompanyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      clientLogo: freezed == clientLogo
          ? _value.clientLogo
          : clientLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      haveDiscount: null == haveDiscount
          ? _value.haveDiscount
          : haveDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      clientIsVerified: null == clientIsVerified
          ? _value.clientIsVerified
          : clientIsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'min_quantity') int minQuantity,
      @JsonKey(name: 'max_quantity') int maxQuantity,
      String price,
      @JsonKey(name: 'productMedias') List<ProductMediaModel> productMedias,
      @JsonKey(name: 'is_favourite') bool isFavourite,
      @JsonKey(name: 'is_cart') bool isCart,
      @JsonKey(name: 'client_name') String? clientName,
      @JsonKey(name: 'client_id') int? clientId,
      @JsonKey(name: 'client_email') String? clientEmail,
      @JsonKey(name: 'client_phone') String? clientPhone,
      @JsonKey(name: 'client_company_name') String? clientCompanyName,
      @JsonKey(name: 'client_company_phone') String? clientCompanyPhone,
      @JsonKey(name: 'client_logo') String? clientLogo,
      @JsonKey(name: 'have_discount') bool haveDiscount,
      @JsonKey(name: 'is_available') bool isAvailable,
      @JsonKey(name: 'client_is_verified') bool clientIsVerified,
      double rating,
      @JsonKey(name: 'rating_count') int ratingCount,
      BrandModel? brand});

  @override
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minQuantity = null,
    Object? maxQuantity = null,
    Object? price = null,
    Object? productMedias = null,
    Object? isFavourite = null,
    Object? isCart = null,
    Object? clientName = freezed,
    Object? clientId = freezed,
    Object? clientEmail = freezed,
    Object? clientPhone = freezed,
    Object? clientCompanyName = freezed,
    Object? clientCompanyPhone = freezed,
    Object? clientLogo = freezed,
    Object? haveDiscount = null,
    Object? isAvailable = null,
    Object? clientIsVerified = null,
    Object? rating = null,
    Object? ratingCount = null,
    Object? brand = freezed,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minQuantity: null == minQuantity
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      maxQuantity: null == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      productMedias: null == productMedias
          ? _value._productMedias
          : productMedias // ignore: cast_nullable_to_non_nullable
              as List<ProductMediaModel>,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      isCart: null == isCart
          ? _value.isCart
          : isCart // ignore: cast_nullable_to_non_nullable
              as bool,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientEmail: freezed == clientEmail
          ? _value.clientEmail
          : clientEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      clientPhone: freezed == clientPhone
          ? _value.clientPhone
          : clientPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      clientCompanyName: freezed == clientCompanyName
          ? _value.clientCompanyName
          : clientCompanyName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientCompanyPhone: freezed == clientCompanyPhone
          ? _value.clientCompanyPhone
          : clientCompanyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      clientLogo: freezed == clientLogo
          ? _value.clientLogo
          : clientLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      haveDiscount: null == haveDiscount
          ? _value.haveDiscount
          : haveDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      clientIsVerified: null == clientIsVerified
          ? _value.clientIsVerified
          : clientIsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'min_quantity') this.minQuantity = 1,
      @JsonKey(name: 'max_quantity') this.maxQuantity = 100,
      required this.price,
      @JsonKey(name: 'productMedias')
      final List<ProductMediaModel> productMedias = const [],
      @JsonKey(name: 'is_favourite') this.isFavourite = false,
      @JsonKey(name: 'is_cart') this.isCart = false,
      @JsonKey(name: 'client_name') this.clientName,
      @JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'client_email') this.clientEmail,
      @JsonKey(name: 'client_phone') this.clientPhone,
      @JsonKey(name: 'client_company_name') this.clientCompanyName,
      @JsonKey(name: 'client_company_phone') this.clientCompanyPhone,
      @JsonKey(name: 'client_logo') this.clientLogo,
      @JsonKey(name: 'have_discount') this.haveDiscount = false,
      @JsonKey(name: 'is_available') this.isAvailable = true,
      @JsonKey(name: 'client_is_verified') this.clientIsVerified = false,
      this.rating = 0.0,
      @JsonKey(name: 'rating_count') this.ratingCount = 0,
      this.brand})
      : _productMedias = productMedias;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'min_quantity')
  final int minQuantity;
  @override
  @JsonKey(name: 'max_quantity')
  final int maxQuantity;
  @override
  final String price;
  final List<ProductMediaModel> _productMedias;
  @override
  @JsonKey(name: 'productMedias')
  List<ProductMediaModel> get productMedias {
    if (_productMedias is EqualUnmodifiableListView) return _productMedias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productMedias);
  }

  @override
  @JsonKey(name: 'is_favourite')
  final bool isFavourite;
  @override
  @JsonKey(name: 'is_cart')
  final bool isCart;
  @override
  @JsonKey(name: 'client_name')
  final String? clientName;
  @override
  @JsonKey(name: 'client_id')
  final int? clientId;
  @override
  @JsonKey(name: 'client_email')
  final String? clientEmail;
  @override
  @JsonKey(name: 'client_phone')
  final String? clientPhone;
  @override
  @JsonKey(name: 'client_company_name')
  final String? clientCompanyName;
  @override
  @JsonKey(name: 'client_company_phone')
  final String? clientCompanyPhone;
  @override
  @JsonKey(name: 'client_logo')
  final String? clientLogo;
  @override
  @JsonKey(name: 'have_discount')
  final bool haveDiscount;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;
  @override
  @JsonKey(name: 'client_is_verified')
  final bool clientIsVerified;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey(name: 'rating_count')
  final int ratingCount;
  @override
  final BrandModel? brand;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, minQuantity: $minQuantity, maxQuantity: $maxQuantity, price: $price, productMedias: $productMedias, isFavourite: $isFavourite, isCart: $isCart, clientName: $clientName, clientId: $clientId, clientEmail: $clientEmail, clientPhone: $clientPhone, clientCompanyName: $clientCompanyName, clientCompanyPhone: $clientCompanyPhone, clientLogo: $clientLogo, haveDiscount: $haveDiscount, isAvailable: $isAvailable, clientIsVerified: $clientIsVerified, rating: $rating, ratingCount: $ratingCount, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minQuantity, minQuantity) ||
                other.minQuantity == minQuantity) &&
            (identical(other.maxQuantity, maxQuantity) ||
                other.maxQuantity == maxQuantity) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._productMedias, _productMedias) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.isCart, isCart) || other.isCart == isCart) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientEmail, clientEmail) ||
                other.clientEmail == clientEmail) &&
            (identical(other.clientPhone, clientPhone) ||
                other.clientPhone == clientPhone) &&
            (identical(other.clientCompanyName, clientCompanyName) ||
                other.clientCompanyName == clientCompanyName) &&
            (identical(other.clientCompanyPhone, clientCompanyPhone) ||
                other.clientCompanyPhone == clientCompanyPhone) &&
            (identical(other.clientLogo, clientLogo) ||
                other.clientLogo == clientLogo) &&
            (identical(other.haveDiscount, haveDiscount) ||
                other.haveDiscount == haveDiscount) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.clientIsVerified, clientIsVerified) ||
                other.clientIsVerified == clientIsVerified) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        minQuantity,
        maxQuantity,
        price,
        const DeepCollectionEquality().hash(_productMedias),
        isFavourite,
        isCart,
        clientName,
        clientId,
        clientEmail,
        clientPhone,
        clientCompanyName,
        clientCompanyPhone,
        clientLogo,
        haveDiscount,
        isAvailable,
        clientIsVerified,
        rating,
        ratingCount,
        brand
      ]);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'min_quantity') final int minQuantity,
      @JsonKey(name: 'max_quantity') final int maxQuantity,
      required final String price,
      @JsonKey(name: 'productMedias')
      final List<ProductMediaModel> productMedias,
      @JsonKey(name: 'is_favourite') final bool isFavourite,
      @JsonKey(name: 'is_cart') final bool isCart,
      @JsonKey(name: 'client_name') final String? clientName,
      @JsonKey(name: 'client_id') final int? clientId,
      @JsonKey(name: 'client_email') final String? clientEmail,
      @JsonKey(name: 'client_phone') final String? clientPhone,
      @JsonKey(name: 'client_company_name') final String? clientCompanyName,
      @JsonKey(name: 'client_company_phone') final String? clientCompanyPhone,
      @JsonKey(name: 'client_logo') final String? clientLogo,
      @JsonKey(name: 'have_discount') final bool haveDiscount,
      @JsonKey(name: 'is_available') final bool isAvailable,
      @JsonKey(name: 'client_is_verified') final bool clientIsVerified,
      final double rating,
      @JsonKey(name: 'rating_count') final int ratingCount,
      final BrandModel? brand}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'min_quantity')
  int get minQuantity;
  @override
  @JsonKey(name: 'max_quantity')
  int get maxQuantity;
  @override
  String get price;
  @override
  @JsonKey(name: 'productMedias')
  List<ProductMediaModel> get productMedias;
  @override
  @JsonKey(name: 'is_favourite')
  bool get isFavourite;
  @override
  @JsonKey(name: 'is_cart')
  bool get isCart;
  @override
  @JsonKey(name: 'client_name')
  String? get clientName;
  @override
  @JsonKey(name: 'client_id')
  int? get clientId;
  @override
  @JsonKey(name: 'client_email')
  String? get clientEmail;
  @override
  @JsonKey(name: 'client_phone')
  String? get clientPhone;
  @override
  @JsonKey(name: 'client_company_name')
  String? get clientCompanyName;
  @override
  @JsonKey(name: 'client_company_phone')
  String? get clientCompanyPhone;
  @override
  @JsonKey(name: 'client_logo')
  String? get clientLogo;
  @override
  @JsonKey(name: 'have_discount')
  bool get haveDiscount;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;
  @override
  @JsonKey(name: 'client_is_verified')
  bool get clientIsVerified;
  @override
  double get rating;
  @override
  @JsonKey(name: 'rating_count')
  int get ratingCount;
  @override
  BrandModel? get brand;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductMediaModel _$ProductMediaModelFromJson(Map<String, dynamic> json) {
  return _ProductMediaModel.fromJson(json);
}

/// @nodoc
mixin _$ProductMediaModel {
  int get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_primary')
  int get isPrimary => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ProductMediaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductMediaModelCopyWith<ProductMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMediaModelCopyWith<$Res> {
  factory $ProductMediaModelCopyWith(
          ProductMediaModel value, $Res Function(ProductMediaModel) then) =
      _$ProductMediaModelCopyWithImpl<$Res, ProductMediaModel>;
  @useResult
  $Res call(
      {int id,
      String path,
      @JsonKey(name: 'is_primary') int isPrimary,
      String type});
}

/// @nodoc
class _$ProductMediaModelCopyWithImpl<$Res, $Val extends ProductMediaModel>
    implements $ProductMediaModelCopyWith<$Res> {
  _$ProductMediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? isPrimary = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductMediaModelImplCopyWith<$Res>
    implements $ProductMediaModelCopyWith<$Res> {
  factory _$$ProductMediaModelImplCopyWith(_$ProductMediaModelImpl value,
          $Res Function(_$ProductMediaModelImpl) then) =
      __$$ProductMediaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String path,
      @JsonKey(name: 'is_primary') int isPrimary,
      String type});
}

/// @nodoc
class __$$ProductMediaModelImplCopyWithImpl<$Res>
    extends _$ProductMediaModelCopyWithImpl<$Res, _$ProductMediaModelImpl>
    implements _$$ProductMediaModelImplCopyWith<$Res> {
  __$$ProductMediaModelImplCopyWithImpl(_$ProductMediaModelImpl _value,
      $Res Function(_$ProductMediaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? isPrimary = null,
    Object? type = null,
  }) {
    return _then(_$ProductMediaModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductMediaModelImpl implements _ProductMediaModel {
  const _$ProductMediaModelImpl(
      {required this.id,
      required this.path,
      @JsonKey(name: 'is_primary') this.isPrimary = 0,
      this.type = 'image'});

  factory _$ProductMediaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductMediaModelImplFromJson(json);

  @override
  final int id;
  @override
  final String path;
  @override
  @JsonKey(name: 'is_primary')
  final int isPrimary;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'ProductMediaModel(id: $id, path: $path, isPrimary: $isPrimary, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductMediaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, isPrimary, type);

  /// Create a copy of ProductMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductMediaModelImplCopyWith<_$ProductMediaModelImpl> get copyWith =>
      __$$ProductMediaModelImplCopyWithImpl<_$ProductMediaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductMediaModelImplToJson(
      this,
    );
  }
}

abstract class _ProductMediaModel implements ProductMediaModel {
  const factory _ProductMediaModel(
      {required final int id,
      required final String path,
      @JsonKey(name: 'is_primary') final int isPrimary,
      final String type}) = _$ProductMediaModelImpl;

  factory _ProductMediaModel.fromJson(Map<String, dynamic> json) =
      _$ProductMediaModelImpl.fromJson;

  @override
  int get id;
  @override
  String get path;
  @override
  @JsonKey(name: 'is_primary')
  int get isPrimary;
  @override
  String get type;

  /// Create a copy of ProductMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductMediaModelImplCopyWith<_$ProductMediaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
