import 'package:freezed_annotation/freezed_annotation.dart';
import 'brand_model.dart';

part 'brands_response_model.freezed.dart';
part 'brands_response_model.g.dart';

@freezed
class BrandsResponseModel with _$BrandsResponseModel {
  const factory BrandsResponseModel({
    required bool success,
    required int code,
    required BrandsDataModel data,
  }) = _BrandsResponseModel;

  factory BrandsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsResponseModelFromJson(json);
}

@freezed
class BrandsDataModel with _$BrandsDataModel {
  const factory BrandsDataModel({
    @Default([]) List<BrandModel> data,
    LinksModel? links,
    MetaModel? meta,
  }) = _BrandsDataModel;

  factory BrandsDataModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsDataModelFromJson(json);
}

@freezed
class LinksModel with _$LinksModel {
  const factory LinksModel({
    String? first,
    String? last,
    String? prev,
    String? next,
  }) = _LinksModel;

  factory LinksModel.fromJson(Map<String, dynamic> json) =>
      _$LinksModelFromJson(json);
}

@freezed
class MetaModel with _$MetaModel {
  const factory MetaModel({
    @JsonKey(name: 'current_page') @Default(1) int currentPage,
    @Default(1) int from,
    @JsonKey(name: 'last_page') @Default(1) int lastPage,
    @Default([]) List<MetaLinkModel> links,
    @Default('') String path,
    @JsonKey(name: 'per_page') @Default(10) int perPage,
    @Default(1) int to,
    @Default(0) int total,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}

@freezed
class MetaLinkModel with _$MetaLinkModel {
  const factory MetaLinkModel({
    String? url,
    required String label,
    @Default(false) bool active,
  }) = _MetaLinkModel;

  factory MetaLinkModel.fromJson(Map<String, dynamic> json) =>
      _$MetaLinkModelFromJson(json);
}
