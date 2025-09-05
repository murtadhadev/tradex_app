import 'package:freezed_annotation/freezed_annotation.dart';
import 'order.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default([]) List<Order> orders,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _OrdersState;
}
