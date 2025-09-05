import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/banner_entity.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    required int id,
    required String name,
    String? link,
    required String image,
    @JsonKey(name: 'mobile_image') String? mobileImage,
    @JsonKey(name: 'order_by') @Default(0) int orderBy,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}

extension BannerModelX on BannerModel {
  BannerEntity toEntity() {
    return BannerEntity(
      id: id,
      name: name,
      link: link,
      image: image,
      mobileImage: mobileImage,
      orderBy: orderBy,
    );
  }
}
