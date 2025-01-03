import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_detail/theme/colors.dart';

class GeneralHeader extends StatelessWidget {
  GeneralHeader({super.key});
  final AppColors colors = AppColors();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: size.width * 0.03),
      padding:
          EdgeInsets.symmetric(vertical: 12, horizontal: size.width * 0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors.mainColor.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tile("Next Appointment", Icons.calendar_month, "21-9-2024"),
          VerticalDivider(
            color: Colors.black, // Color of the divider
            thickness: 1, // Thickness of the divider
            width: 20, // Width including padding
            indent: 20, // Top padding
            endIndent: 20, // Bottom padding
          ),
          tile("Next Appointment", Icons.calendar_month, "21-9-2024"),
          IntrinsicHeight(
            child: VerticalDivider(
              color: Colors.grey.shade400,
            ),
          ),
          tile("Next Appointment", Icons.calendar_month, "21-9-2024"),
        ],
      ),
    );
  }

  //********************* */
  Widget tile(String header, IconData icon, String bottom) {
    return Column(
      children: [
        Text(
          header,
          style: TextStyle(fontSize: 11),
        ),
        SizedBox(
          height: 12,
        ),
        Icon(
          icon,
          size: 20,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          bottom,
          style: TextStyle(fontSize: 11, color: colors.mainColor),
        ),
      ],
    );
  }
}
