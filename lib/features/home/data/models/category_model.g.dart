// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      icon: json['icon'] as String?,
      banner: json['banner'] as String?,
      subcategories: (json['subcategories'] as List<dynamic>?)
              ?.map((e) => SubcategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'icon': instance.icon,
      'banner': instance.banner,
      'subcategories': instance.subcategories,
    };

_$SubcategoryModelImpl _$$SubcategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubcategoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      banner: json['banner'] as String?,
    );

Map<String, dynamic> _$$SubcategoryModelImplToJson(
        _$SubcategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'banner': instance.banner,
    };
