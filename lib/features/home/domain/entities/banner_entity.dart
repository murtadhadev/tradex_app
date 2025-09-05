import 'package:equatable/equatable.dart';

class BannerEntity extends Equatable {
  final int id;
  final String name;
  final String? link;
  final String image;
  final String? mobileImage;
  final int orderBy;

  const BannerEntity({
    required this.id,
    required this.name,
    this.link,
    required this.image,
    this.mobileImage,
    required this.orderBy,
  });

  @override
  List<Object?> get props => [id, name, link, image, mobileImage, orderBy];
}
