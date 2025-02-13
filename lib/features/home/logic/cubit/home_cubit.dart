import 'package:bookin_appointment/core/helpers/extensions.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:bookin_appointment/features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final HomeRepo _homeRepo;

  List<SpecializationData?>? specializationList = [];

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getAllSpecialization();
    response.when(
      success: (specializationResponseModel) {
        specializationList =
            specializationResponseModel.specializationData ?? [];

        getDoctors(specializationId: specializationList?.first?.id);
        emit(HomeState.specializationSuccess(specializationList));
      },
      failure: (error) => emit(HomeState.specializationError(error: error)),
    );
  }

  void getDoctors({required int? specializationId}) async {
    List<Doctors?>? doctorList = getDoctorBySpecializtionById(specializationId);

    if (!doctorList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorList));
    } else {
      emit(const HomeState.doctorsError());
    }
  }

  /// return the list of doctors based on the Specialization id
  List<Doctors?>? getDoctorBySpecializtionById(int? specializationId) {
    return specializationList
        ?.firstWhere((element) => element?.id == specializationId)
        ?.doctorsList;
  }
}
