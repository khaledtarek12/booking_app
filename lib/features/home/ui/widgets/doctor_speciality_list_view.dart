import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:bookin_appointment/features/home/ui/widgets/doctor_spciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key, required this.specializations});

  final List<SpecializationData?> specializations;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializations.length,
        itemBuilder: (context, index) {
          return DoctorSpcialityListViewItem(
            specializationData: specializations[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
