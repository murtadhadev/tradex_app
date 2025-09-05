import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/product_entity.dart';
import 'brand_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String name,
    @JsonKey(name: 'min_quantity') @Default(1) int minQuantity,
    @JsonKey(name: 'max_quantity') @Default(100) int maxQuantity,
    required String price,
    @JsonKey(name: 'productMedias')
    @Default([])
    List<ProductMediaModel> productMedias,
    @JsonKey(name: 'is_favourite') @Default(false) bool isFavourite,
    @JsonKey(name: 'is_cart') @Default(false) bool isCart,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'client_id') int? clientId,
    @JsonKey(name: 'client_email') String? clientEmail,
    @JsonKey(name: 'client_phone') String? clientPhone,
    @JsonKey(name: 'client_company_name') String? clientCompanyName,
    @JsonKey(name: 'client_company_phone') String? clientCompanyPhone,
    @JsonKey(name: 'client_logo') String? clientLogo,
    @JsonKey(name: 'have_discount') @Default(false) bool haveDiscount,
    @JsonKey(name: 'is_available') @Default(true) bool isAvailable,
    @JsonKey(name: 'client_is_verified') @Default(false) bool clientIsVerified,
    @Default(0.0) double rating,
    @JsonKey(name: 'rating_count') @Default(0) int ratingCount,
    BrandModel? brand,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductMediaModel with _$ProductMediaModel {
  const factory ProductMediaModel({
    required int id,
    required String path,
    @JsonKey(name: 'is_primary') @Default(0) int isPrimary,
    @Default('image') String type,
  }) = _ProductMediaModel;

  factory ProductMediaModel.fromJson(Map<String, dynamic> json) =>
      _$ProductMediaModelFromJson(json);
}

extension ProductModelX on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      name: name,
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
      price: () {
        final cleanPrice = price
            .toString()
            .replaceAll('AED', '')
            .replaceAll(',', '')
            .trim();
        final parsedPrice = double.tryParse(cleanPrice);
        print('Price parsing: "$price" -> "$cleanPrice" -> $parsedPrice');
        return parsedPrice ?? 0.0;
      }(),
      productMedias: productMedias.map((e) => e.toEntity()).toList(),
      isFavourite: isFavourite,
      isCart: isCart,
      clientName: clientName,
      clientId: clientId,
      clientEmail: clientEmail,
      clientPhone: clientPhone,
      clientCompanyName: clientCompanyName,
      clientCompanyPhone: clientCompanyPhone,
      clientLogo: clientLogo,
      haveDiscount: haveDiscount,
      isAvailable: isAvailable,
      clientIsVerified: clientIsVerified,
      rating: rating,
      ratingCount: ratingCount,
      brand: brand?.toEntity(),
    );
  }
}

extension ProductMediaModelX on ProductMediaModel {
  ProductMediaEntity toEntity() {
    return ProductMediaEntity(
      id: id,
      path: path,
      isPrimary: isPrimary,
      type: type,
    );
  }
}
