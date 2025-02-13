import 'package:bookin_appointment/core/networkes/api_error_handler.dart';
import 'package:bookin_appointment/core/networkes/api_result.dart';
import 'package:bookin_appointment/core/networkes/api_service.dart';
import 'package:bookin_appointment/features/signup/data/models/signup_requset_body.dart';
import 'package:bookin_appointment/features/signup/data/models/signup_response.dart';

class SignupRepo {
  final ApiService apiService;

  SignupRepo(this.apiService);

  Future<ApiResult<SignupResponse>> signUp(
      SignupRequsetBody signupRequsetBody) async {
    try {
      final response = await apiService.signUp(signupRequsetBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
