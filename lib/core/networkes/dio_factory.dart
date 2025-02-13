import 'package:bookin_appointment/core/helpers/shared_pref_const.dart';
import 'package:bookin_appointment/core/helpers/shared_pref_helper.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioHeader();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeader() async {
    dio!.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SharedPrefHelper.getString(SharedPrefConst.uaserToken)}',
    };
  }

  static void setTokenIntoHeaderAftreUserLoggedIn(String token) {
    dio!.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptors() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
