// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitResponseModelImpl _$$InitResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InitResponseModelImpl(
      success: json['success'] as bool,
      code: (json['code'] as num).toInt(),
      data: InitDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitResponseModelImplToJson(
        _$InitResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'code': instance.code,
      'data': instance.data,
    };

_$InitDataModelImpl _$$InitDataModelImplFromJson(Map<String, dynamic> json) =>
    _$InitDataModelImpl(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      subcategories: (json['subcategories'] as List<dynamic>?)
              ?.map((e) => SubcategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      brands: (json['brands'] as List<dynamic>?)
              ?.map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currencies: (json['currencies'] as List<dynamic>?)
              ?.map((e) => CurrencyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      countries: (json['countries'] as List<dynamic>?)
              ?.map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InitDataModelImplToJson(_$InitDataModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'subcategories': instance.subcategories,
      'brands': instance.brands,
      'currencies': instance.currencies,
      'countries': instance.countries,
    };

_$CurrencyModelImpl _$$CurrencyModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      symbol: json['symbol'] as String,
      exchangeRate: json['exchange_rate'] as String,
      isDefault: json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$$CurrencyModelImplToJson(_$CurrencyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'symbol': instance.symbol,
      'exchange_rate': instance.exchangeRate,
      'is_default': instance.isDefault,
    };

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
