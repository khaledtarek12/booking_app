import 'package:bookin_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:bookin_appointment/features/home/ui/widgets/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, required this.doctorsList});

  final List<Doctors?> doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList.length,
        itemBuilder: (context, index) {
          return  DoctorsListViewItem(
            doctorsModel: doctorsList[index],
          );
        },
      ),
    );
  }
}
