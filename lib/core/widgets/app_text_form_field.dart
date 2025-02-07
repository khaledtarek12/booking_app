import 'package:bookin_appointment/core/themes/colors.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.contentPadding,
    this.focusedBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.fillColor,  this.controller, required this.validator,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final TextEditingController? controller;
  final  Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  const BorderSide(color: ColorsManager.mainBlue, width: 1.3),
            ),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                  color: ColorsManager.lighterGrey, width: 1.3),
            ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(
                color: Colors.red, width: 1.3),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(
                color: Colors.red, width: 1.3),
          ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor ?? ColorsManager.moreLighterGrey,
      ),
      cursorColor: ColorsManager.mainBlue,
      cursorRadius: Radius.circular(16.r),
      cursorOpacityAnimates: true,
      cursorErrorColor: Colors.red,
      obscureText: obscureText,
      style: TextStyles.font14DarkBlueMeduim,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
