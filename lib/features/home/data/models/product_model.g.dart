// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      minQuantity: (json['min_quantity'] as num?)?.toInt() ?? 1,
      maxQuantity: (json['max_quantity'] as num?)?.toInt() ?? 100,
      price: json['price'] as String,
      productMedias: (json['productMedias'] as List<dynamic>?)
              ?.map(
                  (e) => ProductMediaModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isFavourite: json['is_favourite'] as bool? ?? false,
      isCart: json['is_cart'] as bool? ?? false,
      clientName: json['client_name'] as String?,
      clientId: (json['client_id'] as num?)?.toInt(),
      clientEmail: json['client_email'] as String?,
      clientPhone: json['client_phone'] as String?,
      clientCompanyName: json['client_company_name'] as String?,
      clientCompanyPhone: json['client_company_phone'] as String?,
      clientLogo: json['client_logo'] as String?,
      haveDiscount: json['have_discount'] as bool? ?? false,
      isAvailable: json['is_available'] as bool? ?? true,
      clientIsVerified: json['client_is_verified'] as bool? ?? false,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      ratingCount: (json['rating_count'] as num?)?.toInt() ?? 0,
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'min_quantity': instance.minQuantity,
      'max_quantity': instance.maxQuantity,
      'price': instance.price,
      'productMedias': instance.productMedias,
      'is_favourite': instance.isFavourite,
      'is_cart': instance.isCart,
      'client_name': instance.clientName,
      'client_id': instance.clientId,
      'client_email': instance.clientEmail,
      'client_phone': instance.clientPhone,
      'client_company_name': instance.clientCompanyName,
      'client_company_phone': instance.clientCompanyPhone,
      'client_logo': instance.clientLogo,
      'have_discount': instance.haveDiscount,
      'is_available': instance.isAvailable,
      'client_is_verified': instance.clientIsVerified,
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
      'brand': instance.brand,
    };

_$ProductMediaModelImpl _$$ProductMediaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductMediaModelImpl(
      id: (json['id'] as num).toInt(),
      path: json['path'] as String,
      isPrimary: (json['is_primary'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? 'image',
    );

Map<String, dynamic> _$$ProductMediaModelImplToJson(
        _$ProductMediaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'is_primary': instance.isPrimary,
      'type': instance.type,
    };
