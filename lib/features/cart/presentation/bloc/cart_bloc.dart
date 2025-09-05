import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/domain/entities/product_entity.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState()) {
    on<CartEvent>((event, emit) {
      event.when(
        addToCart: (product, quantity) => _onAddToCart(product, quantity, emit),
        removeFromCart: (product) => _onRemoveFromCart(product, emit),
        updateQuantity: (product, quantity) =>
            _onUpdateQuantity(product, quantity, emit),
        clearCart: () => _onClearCart(emit),
      );
    });
  }

  void _onAddToCart(
    ProductEntity product,
    int quantity,
    Emitter<CartState> emit,
  ) {
    try {
      final existingIndex = state.cartItems.indexWhere(
        (item) => (item['product'] as ProductEntity).id == product.id,
      );

      List<Map<String, dynamic>> newCartItems = List.from(state.cartItems);

      if (existingIndex != -1) {
        newCartItems[existingIndex]['quantity'] += quantity;
      } else {
        newCartItems.add({'product': product, 'quantity': quantity});
      }

      emit(state.copyWith(cartItems: newCartItems));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  void _onRemoveFromCart(ProductEntity product, Emitter<CartState> emit) {
    try {
      final newCartItems = state.cartItems
          .where((item) => (item['product'] as ProductEntity).id != product.id)
          .toList();

      emit(state.copyWith(cartItems: newCartItems));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  void _onUpdateQuantity(
    ProductEntity product,
    int quantity,
    Emitter<CartState> emit,
  ) {
    try {
      final existingIndex = state.cartItems.indexWhere(
        (item) => (item['product'] as ProductEntity).id == product.id,
      );

      if (existingIndex != -1) {
        List<Map<String, dynamic>> newCartItems = List.from(state.cartItems);

        if (quantity <= 0) {
          newCartItems.removeAt(existingIndex);
        } else {
          newCartItems[existingIndex]['quantity'] = quantity;
        }

        emit(state.copyWith(cartItems: newCartItems));
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  void _onClearCart(Emitter<CartState> emit) {
    emit(const CartState());
  }
}
