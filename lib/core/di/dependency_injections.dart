import 'package:bookin_appointment/core/networkes/api_service.dart';
import 'package:bookin_appointment/core/networkes/dio_factory.dart';
import 'package:bookin_appointment/features/login/data/repo/login_repo.dart';
import 'package:bookin_appointment/features/login/logic/login_cubit/login_cubit.dart';
import 'package:bookin_appointment/features/signup/data/repo/signup_repo.dart';
import 'package:bookin_appointment/features/signup/logic/signup/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setUpGetIt() async {
  // Dio and ApiServices
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  // Signup
  getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));
}
