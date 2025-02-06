import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:bookin_appointment/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:bookin_appointment/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:bookin_appointment/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 40.h,
            bottom: 40.h,
          ),
          child: Column(
            children: [
              const DocLogoAndName(),
              verticalSpace(30),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font13GrayRegular,
                    ),
                    verticalSpace(30),
                    const GetStartedButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
