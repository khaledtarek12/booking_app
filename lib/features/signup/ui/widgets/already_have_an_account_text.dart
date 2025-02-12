import 'package:bookin_appointment/core/helpers/extensions.dart';
import 'package:bookin_appointment/core/routes/routes.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an account ? ',
          style: AppTextStyles.font13DarkBlueRegular,
        ),
        TextSpan(
          text: 'Login',
          style: AppTextStyles.font13BlueSemiBold,
          recognizer: TapGestureRecognizer()
            ..onTap = () => context.pushReplacementNamed(Routes.loginScreen),
        )
      ]),
    );
  }
}
