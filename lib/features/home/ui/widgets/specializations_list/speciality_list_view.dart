import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:bookin_appointment/features/home/logic/cubit/home_cubit.dart';
import 'package:bookin_appointment/features/home/ui/widgets/specializations_list/spciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key, required this.specializations});

  final List<SpecializationData?> specializations;

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

var selectSpecializationIndex = 0;

class _SpecialityListViewState extends State<SpecialityListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializations.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectSpecializationIndex = index;
              });
              context.read<HomeCubit>().getDoctors(
                  specializationId: widget.specializations[index]?.id);
            },
            child: SpcialityListViewItem(
              specializationData: widget.specializations[index],
              itemIndex: index,
              selectedSpecializationIndex: selectSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
