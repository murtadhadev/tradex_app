import '../../../home/domain/entities/product_entity.dart';

class Order {
  final String id;
  final String customerName;
  final String customerPhone;
  final String deliveryAddress;
  final String? notes;
  final String paymentMethod;
  final List<OrderItem> items;
  final double totalAmount;
  final DateTime orderDate;
  final String status;

  Order({
    required this.id,
    required this.customerName,
    required this.customerPhone,
    required this.deliveryAddress,
    this.notes,
    required this.paymentMethod,
    required this.items,
    required this.totalAmount,
    required this.orderDate,
    required this.status,
  });
}

class OrderItem {
  final ProductEntity product;
  final int quantity;
  final double price;

  OrderItem({
    required this.product,
    required this.quantity,
    required this.price,
  });
}
