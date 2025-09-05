import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_event.freezed.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.addOrder({
    required String customerName,
    required String customerPhone,
    required String deliveryAddress,
    String? notes,
    required String paymentMethod,
    required List<Map<String, dynamic>> cartItems,
    required double totalAmount,
  }) = _AddOrder;
}
