import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/domain/entities/product_entity.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default([]) List<ProductEntity> allProducts,
    @Default([]) List<ProductEntity> filteredProducts,
    @Default(false) bool isSearching,
    @Default('') String searchQuery,
  }) = _SearchState;

  const SearchState._();

  bool get hasResults => filteredProducts.isNotEmpty;
}
