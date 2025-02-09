import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/core/themes/colors.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasNumber,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasMinlength,
  });

  final bool hasNumber;
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasMinlength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowerCase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 upperCase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 1 special character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinlength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasvalidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.grey),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration:
                hasvalidated ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasvalidated ? ColorsManager.grey : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
