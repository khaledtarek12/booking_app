import 'package:bookin_appointment/core/themes/colors.dart';
import 'package:bookin_appointment/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, Khaled!', style: AppTextStyles.font18DarkBlueBold),
            Text('How are you feeling today?',
                style: AppTextStyles.font12GrayRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.moreLighterGrey,
          child: SvgPicture.asset('assets/svgs/notification_icon.svg'),
        ),
      ],
    );
  }
}
