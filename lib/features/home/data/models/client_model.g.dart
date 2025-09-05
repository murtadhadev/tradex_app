// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientModelImpl _$$ClientModelImplFromJson(Map<String, dynamic> json) =>
    _$ClientModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      companyName: json['company_name'] as String?,
      businessType: (json['business_type'] as List<dynamic>?)
              ?.map(
                  (e) => BusinessTypeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      companyPhone: json['company_phone'] as String?,
      companyCountryLabel: json['company_country_label'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      logo: json['logo'] as String?,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      ratingCount: (json['rating_count'] as num?)?.toInt() ?? 0,
      isVerified: json['is_verified'] as bool? ?? false,
    );

Map<String, dynamic> _$$ClientModelImplToJson(_$ClientModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'company_name': instance.companyName,
      'business_type': instance.businessType,
      'company_phone': instance.companyPhone,
      'company_country_label': instance.companyCountryLabel,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'logo': instance.logo,
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
      'is_verified': instance.isVerified,
    };

_$BusinessTypeModelImpl _$$BusinessTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessTypeModelImpl(
      id: (json['id'] as num).toInt(),
      label: json['label'] as String,
    );

Map<String, dynamic> _$$BusinessTypeModelImplToJson(
        _$BusinessTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
    };
