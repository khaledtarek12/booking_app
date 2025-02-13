import 'package:bookin_appointment/features/home/logic/cubit/home_cubit.dart';
import 'package:bookin_appointment/features/home/logic/cubit/home_state.dart';
import 'package:bookin_appointment/features/home/ui/widgets/dcotor_list/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is DoctorsSuccess || current is DoctorsError;
      },
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return setUpSuccess(doctorsList);
          },
          doctorsError: (error) => setUpError(),
          orElse: () => const Center(child: SizedBox.shrink()),
        );
      },
    );
  }

  Widget setUpSuccess(doctorsList) {
    return DoctorsListView(doctorsList: doctorsList);
  }

  Widget setUpError() {
  return const SizedBox(
      height: 100,
      child: Center(
        child: Text('error'),
      ),
    );
  }
}
