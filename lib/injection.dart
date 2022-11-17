import 'package:api_test/my/my_cubit.dart';
import 'package:api_test/my_repo.dart';
import 'package:api_test/web_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(
    () => MyRepo(getIt()),
  );
  getIt.registerLazySingleton<WebServices>(() => WebServices(createAndSetupDio()));

// Alternatively you could write it if you don't like global variables
}

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = 1 * 1000
    ..options.receiveTimeout = 10 * 1000;
  dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
      error: true,
      request: true,
      requestHeader: false,
      responseHeader: false));
  return dio;
}
