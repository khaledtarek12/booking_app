import 'package:bookin_appointment/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRaduis;
  final double? horezontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? backgroundColor;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  const AppTextButton({
    super.key,
    this.borderRaduis,
    this.horezontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    this.backgroundColor,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRaduis?.r ?? 16.r),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: horezontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 50.h),
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: textStyle),
    );
  }
}
