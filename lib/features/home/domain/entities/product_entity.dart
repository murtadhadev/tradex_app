import 'package:equatable/equatable.dart';
import 'brand_entity.dart';

class ProductEntity extends Equatable {
  final int id;
  final String name;
  final int minQuantity;
  final int maxQuantity;
  final double price;
  final List<ProductMediaEntity> productMedias;
  final bool isFavourite;
  final bool isCart;
  final String? clientName;
  final int? clientId;
  final String? clientEmail;
  final String? clientPhone;
  final String? clientCompanyName;
  final String? clientCompanyPhone;
  final String? clientLogo;
  final bool haveDiscount;
  final bool isAvailable;
  final bool clientIsVerified;
  final double rating;
  final int ratingCount;
  final BrandEntity? brand;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.minQuantity,
    required this.maxQuantity,
    required this.price,
    required this.productMedias,
    required this.isFavourite,
    required this.isCart,
    this.clientName,
    this.clientId,
    this.clientEmail,
    this.clientPhone,
    this.clientCompanyName,
    this.clientCompanyPhone,
    this.clientLogo,
    required this.haveDiscount,
    required this.isAvailable,
    required this.clientIsVerified,
    required this.rating,
    required this.ratingCount,
    this.brand,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    minQuantity,
    maxQuantity,
    price,
    productMedias,
    isFavourite,
    isCart,
    clientName,
    clientId,
    clientEmail,
    clientPhone,
    clientCompanyName,
    clientCompanyPhone,
    clientLogo,
    haveDiscount,
    isAvailable,
    clientIsVerified,
    rating,
    ratingCount,
    brand,
  ];
}

class ProductMediaEntity extends Equatable {
  final int id;
  final String path;
  final int isPrimary;
  final String type;

  const ProductMediaEntity({
    required this.id,
    required this.path,
    required this.isPrimary,
    required this.type,
  });

  @override
  List<Object?> get props => [id, path, isPrimary, type];
}
