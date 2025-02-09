import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:bookin_appointment/core/widgets/app_text_button.dart';
import 'package:bookin_appointment/features/login/logic/login_cubit/login_cubit.dart';
import 'package:bookin_appointment/features/login/ui/widgets/dont_have_an_account_text.dart';
import 'package:bookin_appointment/features/login/ui/widgets/email_and_password.dart';
import 'package:bookin_appointment/features/login/ui/widgets/login_bloc_listner.dart';
import 'package:bookin_appointment/features/login/ui/widgets/terms_and_condition_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Back', style: TextStyles.font24BlueBold),
                  verticalSpace(8),
                  Text(
                      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                      style: TextStyles.font14GrayRegular),
                  verticalSpace(36),
                  Column(
                    children: [
                      const EmailAndPassword(),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemibold,
                        onPressed: () {
                          context.read<LoginCubit>().validateThenDoLogin();
                        },
                      ),
                      verticalSpace(16),
                      const TermsAndConditionText(),
                      verticalSpace(60),
                      const DontHaveAnAccountTetxt(),
                      const LoginBlocListner(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
