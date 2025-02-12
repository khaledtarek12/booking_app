import 'package:bookin_appointment/core/networkes/api_error_handler.dart';
import 'package:bookin_appointment/core/networkes/api_result.dart';
import 'package:bookin_appointment/features/home/data/apis/home_api_service.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationResponseModel>> getAllSpecialization() async {
    try {
      var response = await _homeApiService.getAllSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}