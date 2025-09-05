import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/banner_entity.dart';
import '../../domain/entities/brand_entity.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/entities/client_entity.dart';
import '../../domain/usecases/get_home_data.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeData _getHomeData;

  HomeBloc(this._getHomeData) : super(const HomeState()) {
    on<_LoadHomeData>(_onLoadHomeData);
    on<_LoadBanners>(_onLoadBanners);
    on<_LoadCategories>(_onLoadCategories);
    on<_LoadBrands>(_onLoadBrands);
    on<_LoadMostPopularProducts>(_onLoadMostPopularProducts);
    on<_LoadBestSellingProducts>(_onLoadBestSellingProducts);
    on<_LoadBestClients>(_onLoadBestClients);
  }

  Future<void> _onLoadHomeData(
    _LoadHomeData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final results = await Future.wait([
      _getHomeData.getBanners(),
      _getHomeData.getCategories(),
      _getHomeData.getBrands(),
      _getHomeData.getMostPopularProducts(),
      _getHomeData.getBestSellingProducts(),
      _getHomeData.getBestClients(),
    ]);

    final hasError = results.any((result) => result.isLeft());

    if (hasError) {
      final firstError = results.firstWhere((result) => result.isLeft());
      firstError.fold(
        (failure) => emit(
          state.copyWith(isLoading: false, errorMessage: failure.toString()),
        ),
        (r) => null,
      );
    } else {
      emit(
        state.copyWith(
          isLoading: false,
          banners: results[0].fold(
            (l) => <BannerEntity>[],
            (r) => r as List<BannerEntity>,
          ),
          categories: results[1].fold(
            (l) => <CategoryEntity>[],
            (r) => r as List<CategoryEntity>,
          ),
          brands: results[2].fold(
            (l) => <BrandEntity>[],
            (r) => r as List<BrandEntity>,
          ),
          mostPopularProducts: results[3].fold(
            (l) => <ProductEntity>[],
            (r) => r as List<ProductEntity>,
          ),
          bestSellingProducts: results[4].fold(
            (l) => <ProductEntity>[],
            (r) => r as List<ProductEntity>,
          ),
          bestClients: results[5].fold(
            (l) => <ClientEntity>[],
            (r) => r as List<ClientEntity>,
          ),
        ),
      );
    }
  }

  Future<void> _onLoadBanners(
    _LoadBanners event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _getHomeData.getBanners();
    result.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.toString())),
      (banners) => emit(state.copyWith(banners: banners)),
    );
  }

  Future<void> _onLoadCategories(
    _LoadCategories event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _getHomeData.getCategories();
    result.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.toString())),
      (categories) => emit(state.copyWith(categories: categories)),
    );
  }

  Future<void> _onLoadBrands(_LoadBrands event, Emitter<HomeState> emit) async {
    final result = await _getHomeData.getBrands();
    result.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.toString())),
      (brands) => emit(state.copyWith(brands: brands)),
    );
  }

  Future<void> _onLoadMostPopularProducts(
    _LoadMostPopularProducts event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _getHomeData.getMostPopularProducts();
    result.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.toString())),
      (products) => emit(state.copyWith(mostPopularProducts: products)),
    );
  }

  Future<void> _onLoadBestSellingProducts(
    _LoadBestSellingProducts event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _getHomeData.getBestSellingProducts();
    result.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.toString())),
      (products) => emit(state.copyWith(bestSellingProducts: products)),
    );
  }

  Future<void> _onLoadBestClients(
    _LoadBestClients event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _getHomeData.getBestClients();
    result.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.toString())),
      (clients) => emit(state.copyWith(bestClients: clients)),
    );
  }
}
