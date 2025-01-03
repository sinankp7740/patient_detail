import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_detail/theme/colors.dart';
import 'package:patient_detail/views/patient-details/widgets/general_header.dart';

class GeneralView extends StatelessWidget {
  GeneralView({super.key});
  final AppColors colors = AppColors();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        GeneralHeader(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Vitals",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    "Last uploaded on 23-4-2024",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.grey.shade600),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: colors.mainColor.withOpacity(0.1)),
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.blue.shade900,
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: colors.mainColor.withOpacity(0.1)),
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Colors.blue.shade900,
                      )),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
