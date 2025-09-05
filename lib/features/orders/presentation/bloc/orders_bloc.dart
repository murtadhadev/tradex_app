import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import '../../../home/domain/entities/product_entity.dart';
import 'orders_event.dart';
import 'orders_state.dart';
import 'order.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final Uuid _uuid = const Uuid();

  OrdersBloc() : super(const OrdersState()) {
    on<OrdersEvent>((event, emit) {
      event.when(
        addOrder:
            (
              customerName,
              customerPhone,
              deliveryAddress,
              notes,
              paymentMethod,
              cartItems,
              totalAmount,
            ) => _onAddOrder(
              customerName,
              customerPhone,
              deliveryAddress,
              notes,
              paymentMethod,
              cartItems,
              totalAmount,
              emit,
            ),
      );
    });
  }

  void _onAddOrder(
    String customerName,
    String customerPhone,
    String deliveryAddress,
    String? notes,
    String paymentMethod,
    List<Map<String, dynamic>> cartItems,
    double totalAmount,
    Emitter<OrdersState> emit,
  ) {
    try {
      final orderItems = cartItems.map((item) {
        return OrderItem(
          product: item['product'] as ProductEntity,
          quantity: item['quantity'] as int,
          price:
              (item['product'] as ProductEntity).price *
              (item['quantity'] as int),
        );
      }).toList();

      final newOrder = Order(
        id: _uuid.v4(),
        customerName: customerName,
        customerPhone: customerPhone,
        deliveryAddress: deliveryAddress,
        notes: notes,
        paymentMethod: paymentMethod,
        items: orderItems,
        totalAmount: totalAmount,
        orderDate: DateTime.now(),
        status: 'pending',
      );

      final updatedOrders = [newOrder, ...state.orders];
      emit(state.copyWith(orders: updatedOrders));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }
}
