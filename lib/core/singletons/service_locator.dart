import 'package:get_it/get_it.dart';
import 'package:milli/core/db/shared/shared_preferences.dart';
import 'package:milli/core/singletons/dio.dart';

final serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  await StorageRepository.getInstance();
  serviceLocator.registerLazySingleton(DioSettings.new);
}
