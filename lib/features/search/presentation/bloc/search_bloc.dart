import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/domain/entities/product_entity.dart';
import 'search_event.dart';
import 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<SearchEvent>((event, emit) {
      event.when(
        setAllProducts: (products) => _onSetAllProducts(products, emit),
        search: (query) => _onSearch(query, emit),
        clearSearch: () => _onClearSearch(emit),
      );
    });
  }

  void _onSetAllProducts(
    List<ProductEntity> products,
    Emitter<SearchState> emit,
  ) {
    emit(state.copyWith(allProducts: products));
  }

  void _onSearch(String query, Emitter<SearchState> emit) {
    if (query.isEmpty) {
      emit(
        state.copyWith(
          isSearching: false,
          filteredProducts: [],
          searchQuery: '',
        ),
      );
    } else {
      final filteredProducts = state.allProducts.where((product) {
        final productNameLower = product.name.toLowerCase();
        final brandNameLower = product.brand?.name.toLowerCase() ?? '';
        final clientNameLower = product.clientName?.toLowerCase() ?? '';
        final searchQueryLower = query.toLowerCase();

        return productNameLower.contains(searchQueryLower) ||
            brandNameLower.contains(searchQueryLower) ||
            clientNameLower.contains(searchQueryLower);
      }).toList();

      emit(
        state.copyWith(
          isSearching: true,
          filteredProducts: filteredProducts,
          searchQuery: query,
        ),
      );
    }
  }

  void _onClearSearch(Emitter<SearchState> emit) {
    emit(
      state.copyWith(isSearching: false, filteredProducts: [], searchQuery: ''),
    );
  }
}
