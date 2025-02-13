import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection timeout with ApiServer');
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'Connection to the server failed');

        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: 'Send timeout with ApiServer');

        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: 'Receive timeout with ApiServer');

        case DioExceptionType.badResponse:
          return _handleError(error.response!.statusCode, error.response!.data);

        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Request to ApiServer was canceled');

        case DioExceptionType.unknown:
          if (error.message!.contains('SocketException')) {
            return ApiErrorModel(message: 'No Internet Connection');
          } else {
            return ApiErrorModel(
                message:
                    'Connection to the server failed due to internet connection');
          }
        default:
          return ApiErrorModel(
              message: 'Opps There was an Error, Please try again');
      }
    } else {
      // default error
      return ApiErrorModel(
          message: 'Opps There was an Error, Please try again');
    }
  }
}

ApiErrorModel _handleError(int? statusCode, dynamic response) {
  if (response == null) {
    return ApiErrorModel(message: 'No response received from the server.');
  }

  if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
    return ApiErrorModel(
      message: response['message'] ?? 'Authentication error occurred.',
      statusCode: statusCode,
      errors: response['data'],
    );
  } else if (statusCode == 404) {
    return ApiErrorModel(
      message: response['message'] ?? 'Request not found, please try later.',
      statusCode: statusCode,
      errors: response['data'],
    );
  } else if (statusCode == 500) {
    return ApiErrorModel(
      message:
          response['message'] ?? 'Internal server error, please try later.',
      statusCode: statusCode,
      errors: response['data'],
    );
  } else {
    return ApiErrorModel(
      message:
          response['message'] ?? 'Unexpected error occurred, please try again.',
      statusCode: statusCode,
      errors: response['data'],
    );
  }
}
