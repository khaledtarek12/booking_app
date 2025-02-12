import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:bookin_appointment/features/home/ui/widgets/doctor_title_see_all.dart';
import 'package:bookin_appointment/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:bookin_appointment/features/home/ui/widgets/doctors_list_view.dart';
import 'package:bookin_appointment/features/home/ui/widgets/home_tab_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          // ignore: prefer_const_constructors
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorTitleSeeAll(title: 'Doctor Speciality'),
              verticalSpace(18),
              const DoctorsSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
