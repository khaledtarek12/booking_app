import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo.svg", width: 60, height: 60),
        horizontalSpace(10),
        Text("Docdoc", style: TextStyles.font24BlackBold),
      ],
    );
  }
}
