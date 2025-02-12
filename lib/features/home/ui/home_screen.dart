import 'package:bookin_appointment/features/home/ui/widgets/home_tab_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          // ignore: prefer_const_constructors
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              HomeTopBar(),
            ],
          ),
        ),
      ),
    );
  }
}
