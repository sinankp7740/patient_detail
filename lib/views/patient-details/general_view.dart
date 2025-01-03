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
        ),
        vitalHeader(size)
      ],
    );
  } //*************************************************************** */

  Widget vitalHeaderTile(String title, String icon, String value, Size size) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(color: colors.mainColor, fontSize: 10),
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/images/$icon",
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
//******************************* */

  Widget vitalHeaderTile2(
      String title1, String title2, String value1, String value2, Size size) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title1,
              style: TextStyle(color: colors.mainColor, fontSize: 10),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              value1,
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              title2,
              style: TextStyle(color: colors.mainColor, fontSize: 10),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              value2,
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }

  //*********************** */
  Widget vitalHeader(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  vitalHeaderTile("Height", 'height.png', "163cm", size),
                  VerticalDivider(),
                  vitalHeaderTile("Weight", 'foot.png', "70kg", size),
                  VerticalDivider(
                    width: 2,
                    thickness: 2,
                    color: Colors.blue,
                    endIndent: 5,
                    indent: 5,
                  ),
                  vitalHeaderTile("BP", 'drop.png', "128", size),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Divider(
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  vitalHeaderTile2("Pulse", "Diet", "72bpm", "Fruits", size),
                  vitalHeaderTile2(
                      "Temperature", "Drug Allergy", "37 C", "itching", size),
                  vitalHeaderTile2("SPO2", "GRB2", "98%", "None", size),
                ],
              ),
            ],
          ),
          vitalHeaderTile("BMI", 'group.png', "22.86", size),
        ],
      ),
    );
  }
}
