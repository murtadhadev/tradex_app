part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadHomeData() = _LoadHomeData;
  const factory HomeEvent.loadBanners() = _LoadBanners;
  const factory HomeEvent.loadCategories() = _LoadCategories;
  const factory HomeEvent.loadBrands() = _LoadBrands;
  const factory HomeEvent.loadMostPopularProducts() = _LoadMostPopularProducts;
  const factory HomeEvent.loadBestSellingProducts() = _LoadBestSellingProducts;
  const factory HomeEvent.loadBestClients() = _LoadBestClients;
}
