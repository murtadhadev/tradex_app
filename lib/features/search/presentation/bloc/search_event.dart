import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/domain/entities/product_entity.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.setAllProducts({
    required List<ProductEntity> products,
  }) = _SetAllProducts;

  const factory SearchEvent.search({required String query}) = _Search;

  const factory SearchEvent.clearSearch() = _ClearSearch;
}
