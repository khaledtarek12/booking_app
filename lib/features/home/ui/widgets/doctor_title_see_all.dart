import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:flutter/material.dart';

class DoctorTitleSeeAll extends StatelessWidget {
  const DoctorTitleSeeAll({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.font18DarkBlueSemibold,
        ),
        Text(
          'See All',
          style: AppTextStyles.font12BlueRegular,
        ),
      ],
    );
  }
}
