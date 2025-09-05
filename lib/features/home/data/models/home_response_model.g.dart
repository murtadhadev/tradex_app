// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseModelImpl _$$HomeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeResponseModelImpl(
      success: json['success'] as bool,
      code: (json['code'] as num).toInt(),
      data: HomeDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeResponseModelImplToJson(
        _$HomeResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'code': instance.code,
      'data': instance.data,
    };

_$HomeDataModelImpl _$$HomeDataModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeDataModelImpl(
      mostPopularProducts: (json['most_popular_products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bestSellingProducts: (json['best_selling_products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bestClients: (json['best_clients'] as List<dynamic>?)
              ?.map((e) => ClientModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeDataModelImplToJson(_$HomeDataModelImpl instance) =>
    <String, dynamic>{
      'most_popular_products': instance.mostPopularProducts,
      'best_selling_products': instance.bestSellingProducts,
      'best_clients': instance.bestClients,
    };
