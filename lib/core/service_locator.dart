import 'package:clean_architecture_bookly_app/featuers/home/domain/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


import 'utils/api_service.dart';

final getIt = GetIt.instance;
void setupServerLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: getIt.get<ApiService>()));

// Alternatively you could write it if you don't like global variables
}
