import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By Logging, you agree to our ',
              style: AppTextStyles.font13GrayRegular,
            ),
            TextSpan(
              text: 'Terms & Conditions',
              style: AppTextStyles.font13DarkBlueMeduim,
            ),
            TextSpan(
              text: ' and ',
              style: AppTextStyles.font13GrayRegular.copyWith(height: 1.5),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: AppTextStyles.font13DarkBlueMeduim.copyWith(height: 2),
            ),
          ],
        ));
  }
}
