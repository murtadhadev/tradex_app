import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int id;
  final String name;
  final String? image;
  final String? icon;
  final String? banner;
  final List<SubcategoryEntity> subcategories;

  const CategoryEntity({
    required this.id,
    required this.name,
    this.image,
    this.icon,
    this.banner,
    required this.subcategories,
  });

  @override
  List<Object?> get props => [id, name, image, icon, banner, subcategories];
}

class SubcategoryEntity extends Equatable {
  final int id;
  final String name;
  final String? image;
  final String? banner;

  const SubcategoryEntity({
    required this.id,
    required this.name,
    this.image,
    this.banner,
  });

  @override
  List<Object?> get props => [id, name, image, banner];
}
