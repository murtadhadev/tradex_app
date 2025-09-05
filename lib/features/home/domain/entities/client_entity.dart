import 'package:equatable/equatable.dart';

class ClientEntity extends Equatable {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String? companyName;
  final List<BusinessTypeEntity> businessType;
  final String? companyPhone;
  final String? companyCountryLabel;
  final String? latitude;
  final String? longitude;
  final String? logo;
  final double rating;
  final int ratingCount;
  final bool isVerified;

  const ClientEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    this.companyName,
    required this.businessType,
    this.companyPhone,
    this.companyCountryLabel,
    this.latitude,
    this.longitude,
    this.logo,
    required this.rating,
    required this.ratingCount,
    required this.isVerified,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    email,
    phone,
    companyName,
    businessType,
    companyPhone,
    companyCountryLabel,
    latitude,
    longitude,
    logo,
    rating,
    ratingCount,
    isVerified,
  ];
}

class BusinessTypeEntity extends Equatable {
  final int id;
  final String label;

  const BusinessTypeEntity({required this.id, required this.label});

  @override
  List<Object?> get props => [id, label];
}
