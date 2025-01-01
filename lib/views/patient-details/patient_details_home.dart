import 'package:flutter/material.dart';
import 'package:patient_detail/theme/colors.dart';
import 'package:patient_detail/views/patient-details/header.dart';

class PatientDetailsHome extends StatelessWidget {
  PatientDetailsHome({super.key});
  final AppColors colors = AppColors();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [Header()],
      ),
    );
  }
}
