import 'package:dio/dio.dart';
import 'package:milli/assets/api/app_urls.dart';
import 'package:milli/assets/constants/storage_keys.dart';
import 'package:milli/core/db/shared/shared_preferences.dart';

class DioSettings {
  final BaseOptions _dioBaseOptions = BaseOptions(
    baseUrl: AppUrls.baseUrl,
    connectTimeout: const Duration(seconds: 35),
    receiveTimeout: const Duration(seconds: 33),
    followRedirects: false,
    contentType: 'Application/json',
    validateStatus: (status) => status != null && status <= 500,
  );

  BaseOptions get dioBaseOptions => _dioBaseOptions;

  Dio get dio {
    var dio1 = Dio(_dioBaseOptions)
      ..interceptors.add(InterceptorsWrapper(
        onResponse: (response, handler) async {
          print('interceptor OnResponse');
          if (response.statusCode == 401) {
            print('refresh Token');
            var responseRefresh = await dio.post('url', data: {
              "Authorization":
                  "Bearer ${StorageRepository.getString(StorageKeys.refreshToken)}"
            });

            if (responseRefresh.statusCode! >= 200 &&
                responseRefresh.statusCode! < 300) {
              handler.next(responseRefresh);
            } else {
              handler.next(response);
            }
          } else {
            handler.next(response);
          }
        },
        onRequest: (request, handler) {
          print('interceptor OnRequest');
          request.headers.addAll({});
          handler.next(request);
        },
        onError: (request, errorHandler) async {
          errorHandler.next(request);
          print('interceptorOnError');
        },
      ));
    return dio1;
  }
}
