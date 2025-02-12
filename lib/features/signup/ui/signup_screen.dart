import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:bookin_appointment/core/widgets/app_text_button.dart';
import 'package:bookin_appointment/features/login/ui/widgets/terms_and_condition_text.dart';
import 'package:bookin_appointment/features/signup/logic/signup/signup_cubit.dart';
import 'package:bookin_appointment/features/signup/ui/widgets/already_have_an_account_text.dart';
import 'package:bookin_appointment/features/signup/ui/widgets/sign_up_bloc_listner.dart';
import 'package:bookin_appointment/features/signup/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: AppTextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppTextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        context.read<SignupCubit>().validateThenDoSignup();
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignUpBlocListner(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
