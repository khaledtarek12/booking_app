import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({super.key, this.doctorsModel});

  final Doctors? doctorsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
              // loadingBuilder: (context, url, downloadProgress) {
              //   return Shimmer.fromColors(
              //     baseColor: ColorsManager.lightGrey,
              //     highlightColor: Colors.white,
              //     child: Container(
              //       width: 110.w,
              //       height: 120.h,
              //       decoration: BoxDecoration(
              //         shape: BoxShape.rectangle,
              //         borderRadius: BorderRadius.circular(12.0),
              //         color: Colors.white,
              //       ),
              //     ),
              //   );
              // },
              errorBuilder: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: AppTextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: AppTextStyles.font12GrayMeduim,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: AppTextStyles.font12GrayMeduim,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
