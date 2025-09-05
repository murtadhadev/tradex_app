import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_model.dart';
import 'brand_model.dart';

part 'init_response_model.freezed.dart';
part 'init_response_model.g.dart';

@freezed
class InitResponseModel with _$InitResponseModel {
  const factory InitResponseModel({
    required bool success,
    required int code,
    required InitDataModel data,
  }) = _InitResponseModel;

  factory InitResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InitResponseModelFromJson(json);
}

@freezed
class InitDataModel with _$InitDataModel {
  const factory InitDataModel({
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<SubcategoryModel> subcategories,
    @Default([]) List<BrandModel> brands,
    @Default([]) List<CurrencyModel> currencies,
    @Default([]) List<CountryModel> countries,
  }) = _InitDataModel;

  factory InitDataModel.fromJson(Map<String, dynamic> json) =>
      _$InitDataModelFromJson(json);
}

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    required int id,
    required String name,
    required String code,
    required String symbol,
    @JsonKey(name: 'exchange_rate') required String exchangeRate,
    @JsonKey(name: 'is_default') @Default(false) bool isDefault,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({required int id, required String name}) =
      _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
