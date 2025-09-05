// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandsResponseModelImpl _$$BrandsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandsResponseModelImpl(
      success: json['success'] as bool,
      code: (json['code'] as num).toInt(),
      data: BrandsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandsResponseModelImplToJson(
        _$BrandsResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'code': instance.code,
      'data': instance.data,
    };

_$BrandsDataModelImpl _$$BrandsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandsDataModelImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? null
          : LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandsDataModelImplToJson(
        _$BrandsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$LinksModelImpl _$$LinksModelImplFromJson(Map<String, dynamic> json) =>
    _$LinksModelImpl(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$LinksModelImplToJson(_$LinksModelImpl instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

_$MetaModelImpl _$$MetaModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaModelImpl(
      currentPage: (json['current_page'] as num?)?.toInt() ?? 1,
      from: (json['from'] as num?)?.toInt() ?? 1,
      lastPage: (json['last_page'] as num?)?.toInt() ?? 1,
      links: (json['links'] as List<dynamic>?)
              ?.map((e) => MetaLinkModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      path: json['path'] as String? ?? '',
      perPage: (json['per_page'] as num?)?.toInt() ?? 10,
      to: (json['to'] as num?)?.toInt() ?? 1,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MetaModelImplToJson(_$MetaModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'links': instance.links,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

_$MetaLinkModelImpl _$$MetaLinkModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaLinkModelImpl(
      url: json['url'] as String?,
      label: json['label'] as String,
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$$MetaLinkModelImplToJson(_$MetaLinkModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
