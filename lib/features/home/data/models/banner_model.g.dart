// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      link: json['link'] as String?,
      image: json['image'] as String,
      mobileImage: json['mobile_image'] as String?,
      orderBy: (json['order_by'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'link': instance.link,
      'image': instance.image,
      'mobile_image': instance.mobileImage,
      'order_by': instance.orderBy,
    };
