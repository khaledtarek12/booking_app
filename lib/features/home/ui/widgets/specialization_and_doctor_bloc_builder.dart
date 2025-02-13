import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:bookin_appointment/features/home/logic/cubit/home_cubit.dart';
import 'package:bookin_appointment/features/home/logic/cubit/home_state.dart';
import 'package:bookin_appointment/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:bookin_appointment/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationAndDoctorBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is SpecializationLoading ||
            current is SpecializationSuccess ||
            current is SpecializationError;
      },
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => setUpLoading(),
          specializationSuccess: (specializationsResponse) {
            final specializations = specializationsResponse.specializationData;
            return setUpSuccess(specializations);
          },
          specializationError: (error) => setUpError(),
          orElse: () => const Center(child: SizedBox.shrink()),
        );
      },
    );
  }

  Widget setUpSuccess(List<SpecializationData?>? specializations) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(specializations: specializations ?? []),
          verticalSpace(8),
          DoctorsListView(doctorsList: specializations?[0]?.doctorsList ?? []),
        ],
      ),
    );
  }

  Widget setUpError() {
    return const SizedBox(
      height: 100,
      child: Center(
        child: Text('error'),
      ),
    );
  }

  Widget setUpLoading() {
    return const Expanded(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
