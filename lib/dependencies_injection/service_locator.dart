import 'package:get_it/get_it.dart';
import 'package:qossay_s_application1/data/services/api_services.dart';
import 'package:qossay_s_application1/domain/interactors/user_interactor.dart';
import 'package:qossay_s_application1/features/login/controllers/login_controller.dart';
import 'package:qossay_s_application1/features/register/controllers/register_controller.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ApiService>(() => ApiService());

  getIt.registerLazySingleton<UserInteractor>(
      () => UserInteractor(getIt<ApiService>()));

  getIt.registerFactory<LoginController>(
      () => LoginController(userInteractor: getIt<UserInteractor>()));

  getIt.registerFactory<RegisterController>(() => RegisterController());
}
