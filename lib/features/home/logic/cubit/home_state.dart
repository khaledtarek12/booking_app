import 'package:bookin_appointment/core/networkes/api_error_handler.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(SpecializationResponseModel specializationResponseModel) = SpecializationSuccess;
  const factory HomeState.specializationError({required ErrorHandler error}) = SpecializationError;
}
