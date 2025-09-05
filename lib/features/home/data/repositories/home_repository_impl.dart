import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tradex_app/features/home/data/models/banner_model.dart';
import 'package:tradex_app/features/home/data/models/brand_model.dart';
import 'package:tradex_app/features/home/data/models/category_model.dart';
import 'package:tradex_app/features/home/data/models/client_model.dart';
import 'package:tradex_app/features/home/data/models/product_model.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/banner_entity.dart';
import '../../domain/entities/brand_entity.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/entities/client_entity.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_remote_data_source.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  const HomeRepositoryImpl(this._remoteDataSource);

  @override
  ResultFuture<List<BannerEntity>> getBanners() async {
    try {
      final result = await _remoteDataSource.getBanners();
      return Right(result.data.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error occurred'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<CategoryEntity>> getCategories() async {
    try {
      final result = await _remoteDataSource.getInitData();
      return Right(result.data.categories.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error occurred'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<BrandEntity>> getBrands() async {
    try {
      final result = await _remoteDataSource.getBrands();
      return Right(result.data.data.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error occurred'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<ProductEntity>> getMostPopularProducts() async {
    try {
      final result = await _remoteDataSource.getHomeData();
      return Right(
        result.data.mostPopularProducts.map((e) => e.toEntity()).toList(),
      );
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error occurred'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<ProductEntity>> getBestSellingProducts() async {
    try {
      final result = await _remoteDataSource.getHomeData();
      return Right(
        result.data.bestSellingProducts.map((e) => e.toEntity()).toList(),
      );
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error occurred'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<ClientEntity>> getBestClients() async {
    try {
      final result = await _remoteDataSource.getHomeData();
      return Right(result.data.bestClients.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error occurred'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
