import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:bookin_appointment/features/home/logic/cubit/home_cubit.dart';
import 'package:bookin_appointment/features/home/logic/cubit/home_state.dart';
import 'package:bookin_appointment/features/home/ui/widgets/dcotor_list/doctors_shimmer_loading.dart';
import 'package:bookin_appointment/features/home/ui/widgets/specializations_list/speciality_list_view.dart';
import 'package:bookin_appointment/features/home/ui/widgets/specializations_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

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
          specializationSuccess: (specializationsDataList) {
            return setUpSuccess(specializationsDataList);
          },
          specializationError: (error) => setUpError(),
          orElse: () => const Center(child: SizedBox.shrink()),
        );
      },
    );
  }

  Widget setUpSuccess(List<SpecializationData?>? specializations) {
    return SpecialityListView(specializations: specializations ?? []);
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
    return Expanded(
        child: Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalSpace(8),
        const DoctorsShimmerLoading()
      ],
    ));
  }
}
