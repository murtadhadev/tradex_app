// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  String get customerName => throw _privateConstructorUsedError;
  String get customerPhone => throw _privateConstructorUsedError;
  String get deliveryAddress => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get cartItems =>
      throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String customerName,
            String customerPhone,
            String deliveryAddress,
            String? notes,
            String paymentMethod,
            List<Map<String, dynamic>> cartItems,
            double totalAmount)
        addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String customerName,
            String customerPhone,
            String deliveryAddress,
            String? notes,
            String paymentMethod,
            List<Map<String, dynamic>> cartItems,
            double totalAmount)?
        addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String customerName,
            String customerPhone,
            String deliveryAddress,
            String? notes,
            String paymentMethod,
            List<Map<String, dynamic>> cartItems,
            double totalAmount)?
        addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrder value) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrder value)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersEventCopyWith<OrdersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
  @useResult
  $Res call(
      {String customerName,
      String customerPhone,
      String deliveryAddress,
      String? notes,
      String paymentMethod,
      List<Map<String, dynamic>> cartItems,
      double totalAmount});
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? customerPhone = null,
    Object? deliveryAddress = null,
    Object? notes = freezed,
    Object? paymentMethod = null,
    Object? cartItems = null,
    Object? totalAmount = null,
  }) {
    return _then(_value.copyWith(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddOrderImplCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$AddOrderImplCopyWith(
          _$AddOrderImpl value, $Res Function(_$AddOrderImpl) then) =
      __$$AddOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerName,
      String customerPhone,
      String deliveryAddress,
      String? notes,
      String paymentMethod,
      List<Map<String, dynamic>> cartItems,
      double totalAmount});
}

/// @nodoc
class __$$AddOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$AddOrderImpl>
    implements _$$AddOrderImplCopyWith<$Res> {
  __$$AddOrderImplCopyWithImpl(
      _$AddOrderImpl _value, $Res Function(_$AddOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? customerPhone = null,
    Object? deliveryAddress = null,
    Object? notes = freezed,
    Object? paymentMethod = null,
    Object? cartItems = null,
    Object? totalAmount = null,
  }) {
    return _then(_$AddOrderImpl(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddOrderImpl implements _AddOrder {
  const _$AddOrderImpl(
      {required this.customerName,
      required this.customerPhone,
      required this.deliveryAddress,
      this.notes,
      required this.paymentMethod,
      required final List<Map<String, dynamic>> cartItems,
      required this.totalAmount})
      : _cartItems = cartItems;

  @override
  final String customerName;
  @override
  final String customerPhone;
  @override
  final String deliveryAddress;
  @override
  final String? notes;
  @override
  final String paymentMethod;
  final List<Map<String, dynamic>> _cartItems;
  @override
  List<Map<String, dynamic>> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  final double totalAmount;

  @override
  String toString() {
    return 'OrdersEvent.addOrder(customerName: $customerName, customerPhone: $customerPhone, deliveryAddress: $deliveryAddress, notes: $notes, paymentMethod: $paymentMethod, cartItems: $cartItems, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrderImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerName,
      customerPhone,
      deliveryAddress,
      notes,
      paymentMethod,
      const DeepCollectionEquality().hash(_cartItems),
      totalAmount);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrderImplCopyWith<_$AddOrderImpl> get copyWith =>
      __$$AddOrderImplCopyWithImpl<_$AddOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String customerName,
            String customerPhone,
            String deliveryAddress,
            String? notes,
            String paymentMethod,
            List<Map<String, dynamic>> cartItems,
            double totalAmount)
        addOrder,
  }) {
    return addOrder(customerName, customerPhone, deliveryAddress, notes,
        paymentMethod, cartItems, totalAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String customerName,
            String customerPhone,
            String deliveryAddress,
            String? notes,
            String paymentMethod,
            List<Map<String, dynamic>> cartItems,
            double totalAmount)?
        addOrder,
  }) {
    return addOrder?.call(customerName, customerPhone, deliveryAddress, notes,
        paymentMethod, cartItems, totalAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String customerName,
            String customerPhone,
            String deliveryAddress,
            String? notes,
            String paymentMethod,
            List<Map<String, dynamic>> cartItems,
            double totalAmount)?
        addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(customerName, customerPhone, deliveryAddress, notes,
          paymentMethod, cartItems, totalAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrder value) addOrder,
  }) {
    return addOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrder value)? addOrder,
  }) {
    return addOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(this);
    }
    return orElse();
  }
}

abstract class _AddOrder implements OrdersEvent {
  const factory _AddOrder(
      {required final String customerName,
      required final String customerPhone,
      required final String deliveryAddress,
      final String? notes,
      required final String paymentMethod,
      required final List<Map<String, dynamic>> cartItems,
      required final double totalAmount}) = _$AddOrderImpl;

  @override
  String get customerName;
  @override
  String get customerPhone;
  @override
  String get deliveryAddress;
  @override
  String? get notes;
  @override
  String get paymentMethod;
  @override
  List<Map<String, dynamic>> get cartItems;
  @override
  double get totalAmount;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrderImplCopyWith<_$AddOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
