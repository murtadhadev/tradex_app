part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<BannerEntity> banners,
    @Default([]) List<CategoryEntity> categories,
    @Default([]) List<BrandEntity> brands,
    @Default([]) List<ProductEntity> mostPopularProducts,
    @Default([]) List<ProductEntity> bestSellingProducts,
    @Default([]) List<ClientEntity> bestClients,
    String? errorMessage,
  }) = _HomeState;
}
