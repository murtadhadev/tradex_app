import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/domain/entities/product_entity.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default([]) List<Map<String, dynamic>> cartItems,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _CartState;

  const CartState._();

  int get itemCount =>
      cartItems.fold(0, (sum, item) => sum + (item['quantity'] as int));

  double get totalPrice {
    return cartItems.fold(0.0, (sum, item) {
      final product = item['product'] as ProductEntity;
      final quantity = item['quantity'] as int;
      return sum + (product.price * quantity);
    });
  }

  bool isInCart(ProductEntity product) {
    return cartItems.any(
      (item) => (item['product'] as ProductEntity).id == product.id,
    );
  }
}
