import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/core/themes/colors.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpcialityListViewItem extends StatelessWidget {
  const SpcialityListViewItem(
      {super.key,
      required this.specializationData,
      required this.itemIndex,
      this.selectedSpecializationIndex});

  final SpecializationData? specializationData;
  final int itemIndex;
  final int? selectedSpecializationIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          selectedSpecializationIndex == itemIndex
              ? Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorsManager.darkBlue,
                      width: 1.5.w,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/general_speciality.svg',
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28.r,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/general_speciality.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalSpace(8),
          Text(
            specializationData?.name ?? 'Khaled',
            style: itemIndex == selectedSpecializationIndex
                ? AppTextStyles.font14DarkBlueBold
                : AppTextStyles.font12DarkblueRegular,
          )
        ],
      ),
    );
  }
}
