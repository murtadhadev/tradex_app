import 'package:injectable/injectable.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/banner_entity.dart';
import '../entities/brand_entity.dart';
import '../entities/category_entity.dart';
import '../entities/product_entity.dart';
import '../entities/client_entity.dart';
import '../repositories/home_repository.dart';

@injectable
class GetHomeData {
  final HomeRepository _repository;

  const GetHomeData(this._repository);

  ResultFuture<List<BannerEntity>> getBanners() async {
    return await _repository.getBanners();
  }

  ResultFuture<List<CategoryEntity>> getCategories() async {
    return await _repository.getCategories();
  }

  ResultFuture<List<BrandEntity>> getBrands() async {
    return await _repository.getBrands();
  }

  ResultFuture<List<ProductEntity>> getMostPopularProducts() async {
    return await _repository.getMostPopularProducts();
  }

  ResultFuture<List<ProductEntity>> getBestSellingProducts() async {
    return await _repository.getBestSellingProducts();
  }

  ResultFuture<List<ClientEntity>> getBestClients() async {
    return await _repository.getBestClients();
  }
}
