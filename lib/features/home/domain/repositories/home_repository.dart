import '../../../../core/utils/typedef.dart';
import '../entities/banner_entity.dart';
import '../entities/brand_entity.dart';
import '../entities/category_entity.dart';
import '../entities/product_entity.dart';
import '../entities/client_entity.dart';

abstract class HomeRepository {
  ResultFuture<List<BannerEntity>> getBanners();
  ResultFuture<List<CategoryEntity>> getCategories();
  ResultFuture<List<BrandEntity>> getBrands();
  ResultFuture<List<ProductEntity>> getMostPopularProducts();
  ResultFuture<List<ProductEntity>> getBestSellingProducts();
  ResultFuture<List<ClientEntity>> getBestClients();
}
