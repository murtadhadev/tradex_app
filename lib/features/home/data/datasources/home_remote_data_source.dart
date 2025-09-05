import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/home_response_model.dart';
import '../models/init_response_model.dart';
import '../models/brands_response_model.dart';
import '../models/banners_response_model.dart';
import '../../../../core/constants/api_constants.dart';

part 'home_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeRemoteDataSource {
  factory HomeRemoteDataSource(Dio dio) = _HomeRemoteDataSource;

  @GET(ApiConstants.home)
  Future<HomeResponseModel> getHomeData();

  @GET(ApiConstants.init)
  Future<InitResponseModel> getInitData();

  @GET(ApiConstants.brands)
  Future<BrandsResponseModel> getBrands();

  @GET(ApiConstants.banners)
  Future<BannersResponseModel> getBanners();
}
