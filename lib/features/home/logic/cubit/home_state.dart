import 'package:bookin_appointment/core/networkes/api_error_model.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  // Specialization
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
      List<SpecializationData?>? specializationData) = SpecializationSuccess;
  const factory HomeState.specializationError(
      {required ApiErrorModel error}) = SpecializationError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsError() =
      DoctorsError;
}
