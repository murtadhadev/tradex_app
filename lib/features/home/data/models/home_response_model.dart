import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_model.dart';
import 'client_model.dart';

part 'home_response_model.freezed.dart';
part 'home_response_model.g.dart';

@freezed
class HomeResponseModel with _$HomeResponseModel {
  const factory HomeResponseModel({
    required bool success,
    required int code,
    required HomeDataModel data,
  }) = _HomeResponseModel;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}

@freezed
class HomeDataModel with _$HomeDataModel {
  const factory HomeDataModel({
    @JsonKey(name: 'most_popular_products')
    @Default([])
    List<ProductModel> mostPopularProducts,
    @JsonKey(name: 'best_selling_products')
    @Default([])
    List<ProductModel> bestSellingProducts,
    @JsonKey(name: 'best_clients') @Default([]) List<ClientModel> bestClients,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);
}
