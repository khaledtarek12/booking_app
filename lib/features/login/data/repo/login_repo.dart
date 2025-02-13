import 'package:bookin_appointment/core/networkes/api_error_handler.dart';
import 'package:bookin_appointment/core/networkes/api_result.dart';
import 'package:bookin_appointment/core/networkes/api_service.dart';
import 'package:bookin_appointment/features/login/data/models/login_request_body.dart';
import 'package:bookin_appointment/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
