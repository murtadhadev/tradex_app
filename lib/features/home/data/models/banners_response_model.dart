import 'package:freezed_annotation/freezed_annotation.dart';
import 'banner_model.dart';

part 'banners_response_model.freezed.dart';
part 'banners_response_model.g.dart';

@freezed
class BannersResponseModel with _$BannersResponseModel {
  const factory BannersResponseModel({
    required bool success,
    required int code,
    @Default([]) List<BannerModel> data,
  }) = _BannersResponseModel;

  factory BannersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BannersResponseModelFromJson(json);
}
