import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/category_entity.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
    String? image,
    String? icon,
    String? banner,
    @Default([]) List<SubcategoryModel> subcategories,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class SubcategoryModel with _$SubcategoryModel {
  const factory SubcategoryModel({
    required int id,
    required String name,
    String? image,
    String? banner,
  }) = _SubcategoryModel;

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryModelFromJson(json);
}

extension CategoryModelX on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      name: name,
      image: image,
      icon: icon,
      banner: banner,
      subcategories: subcategories.map((e) => e.toEntity()).toList(),
    );
  }
}

extension SubcategoryModelX on SubcategoryModel {
  SubcategoryEntity toEntity() {
    return SubcategoryEntity(id: id, name: name, image: image, banner: banner);
  }
}
