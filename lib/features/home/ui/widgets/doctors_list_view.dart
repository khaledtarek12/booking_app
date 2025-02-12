import 'package:bookin_appointment/core/helpers/spacing.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Container(
              margin: EdgeInsets.only(bottom: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.network(
                      "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
                      width: 110.w,
                      height: 120.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // CachedNetworkImage(
                  //   imageUrl:
                  //       "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
                  //   progressIndicatorBuilder: (context, url, downloadProgress) {
                  //     return Shimmer.fromColors(
                  //       baseColor: ColorsManager.lightGray,
                  //       highlightColor: Colors.white,
                  //       child: Container(
                  //         width: 110.w,
                  //         height: 120.h,
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.rectangle,
                  //           borderRadius: BorderRadius.circular(12.0),
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     );
                  //   },
                  //   imageBuilder: (context, imageProvider) => Container(
                  //     width: 110.w,
                  //     height: 120.h,
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.rectangle,
                  //       borderRadius: BorderRadius.circular(12.0),
                  //       image: DecorationImage(
                  //         image: imageProvider,
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  horizontalSpace(16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: AppTextStyles.font18DarkBlueBold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(5),
                        Text(
                          'Degree | 01008509785',
                          style: AppTextStyles.font12GrayMeduim,
                        ),
                        verticalSpace(5),
                        Text(
                          'Email',
                          style: AppTextStyles.font12GrayMeduim,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
