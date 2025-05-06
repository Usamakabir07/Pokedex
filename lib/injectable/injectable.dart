import 'package:cine_verse/data/data_source/utils/database_constants.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> injectDependencies() async {
  await GetStorage.init();
  $initGetIt(getIt);
  getIt.registerLazySingleton<Dio>(() => getNetworkObj());
}

Dio getNetworkObj() {
  BaseOptions options = BaseOptions(
    baseUrl: DatabaseConstants.getPokemonsUrl,
    receiveTimeout: const Duration(seconds: 10),
  );
  Dio dio = Dio(options);
  dio.interceptors.addAll(
    [
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Content-Type'] = 'application/json';
          options.headers['Accept'] = 'application/json';
          options.headers['Access-Control-Allow-Origin'] = '*';
          handler.next(options);
        },
      ),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    ],
  );
  return dio;
}
