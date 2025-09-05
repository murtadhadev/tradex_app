import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/brand_entity.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
class BrandModel with _$BrandModel {
  const factory BrandModel({
    required int id,
    required String name,
    String? logo,
    String? banner,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}

extension BrandModelX on BrandModel {
  BrandEntity toEntity() {
    return BrandEntity(id: id, name: name, logo: logo, banner: banner);
  }
}
