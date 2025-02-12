import 'package:bookin_appointment/core/networkes/api_constants.dart';
import 'package:bookin_appointment/features/home/data/apis/home_api_constants.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.getAllSpecialization)
  Future<SpecializationResponseModel> getAllSpecialization();
}