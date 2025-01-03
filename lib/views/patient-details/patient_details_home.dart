import 'package:flutter/material.dart';
import 'package:patient_detail/theme/colors.dart';
import 'package:patient_detail/views/patient-details/widgets/header.dart';
import 'package:patient_detail/views/patient-details/widgets/tab_bar.dart';

class PatientDetailsHome extends StatelessWidget {
  PatientDetailsHome({super.key});
  final AppColors colors = AppColors();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: colors.mainColor,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
                child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: PatientDetailsTabBar(),
            ))
          ],
        ),
      ),
    );
  }
}
