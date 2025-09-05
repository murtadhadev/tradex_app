import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/domain/entities/product_entity.dart';

part 'cart_event.freezed.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart({
    required ProductEntity product,
    required int quantity,
  }) = _AddToCart;

  const factory CartEvent.removeFromCart({required ProductEntity product}) =
      _RemoveFromCart;

  const factory CartEvent.updateQuantity({
    required ProductEntity product,
    required int quantity,
  }) = _UpdateQuantity;

  const factory CartEvent.clearCart() = _ClearCart;
}
