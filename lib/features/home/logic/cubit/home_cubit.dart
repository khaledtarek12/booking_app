import 'package:bookin_appointment/features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final HomeRepo _homeRepo;

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getAllSpecialization();
    response.whenOrNull(
        success: (specializationResponseModel ) => emit(HomeState.specializationSuccess(specializationResponseModel)),
        failure: (error) => emit(HomeState.specializationError(error: error)));
  }
}
