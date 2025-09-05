import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../core/network/dio_client.dart';
import '../features/home/data/datasources/home_remote_data_source.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => DioClient().dio;

  @lazySingleton
  HomeRemoteDataSource homeRemoteDataSource(Dio dio) =>
      HomeRemoteDataSource(dio);
}
