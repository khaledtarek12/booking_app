import 'package:bookin_appointment/core/networkes/api_constants.dart';
import 'package:bookin_appointment/features/login/data/models/login_request_body.dart';
import 'package:bookin_appointment/features/login/data/models/login_response.dart';
import 'package:bookin_appointment/features/signup/data/models/signup_requset_body.dart';
import 'package:bookin_appointment/features/signup/data/models/signup_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio , {String baseUrl})= _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signup)
  Future<SignupResponse> signUp(@Body() SignupRequsetBody signupRequsetBody);
}