import 'package:equatable/equatable.dart';

class BrandEntity extends Equatable {
  final int id;
  final String name;
  final String? logo;
  final String? banner;

  const BrandEntity({
    required this.id,
    required this.name,
    this.logo,
    this.banner,
  });

  @override
  List<Object?> get props => [id, name, logo, banner];
}
