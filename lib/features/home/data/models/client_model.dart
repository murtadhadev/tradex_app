import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/client_entity.dart';

part 'client_model.freezed.dart';
part 'client_model.g.dart';

@freezed
class ClientModel with _$ClientModel {
  const factory ClientModel({
    required int id,
    required String name,
    required String email,
    required String phone,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'business_type')
    @Default([])
    List<BusinessTypeModel> businessType,
    @JsonKey(name: 'company_phone') String? companyPhone,
    @JsonKey(name: 'company_country_label') String? companyCountryLabel,
    String? latitude,
    String? longitude,
    String? logo,
    @Default(0.0) double rating,
    @JsonKey(name: 'rating_count') @Default(0) int ratingCount,
    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,
  }) = _ClientModel;

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);
}

@freezed
class BusinessTypeModel with _$BusinessTypeModel {
  const factory BusinessTypeModel({required int id, required String label}) =
      _BusinessTypeModel;

  factory BusinessTypeModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessTypeModelFromJson(json);
}

extension ClientModelX on ClientModel {
  ClientEntity toEntity() {
    return ClientEntity(
      id: id,
      name: name,
      email: email,
      phone: phone,
      companyName: companyName,
      businessType: businessType.map((e) => e.toEntity()).toList(),
      companyPhone: companyPhone,
      companyCountryLabel: companyCountryLabel,
      latitude: latitude,
      longitude: longitude,
      logo: logo,
      rating: rating,
      ratingCount: ratingCount,
      isVerified: isVerified,
    );
  }
}

extension BusinessTypeModelX on BusinessTypeModel {
  BusinessTypeEntity toEntity() {
    return BusinessTypeEntity(id: id, label: label);
  }
}
