// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannersResponseModelImpl _$$BannersResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BannersResponseModelImpl(
      success: json['success'] as bool,
      code: (json['code'] as num).toInt(),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BannersResponseModelImplToJson(
        _$BannersResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'code': instance.code,
      'data': instance.data,
    };
