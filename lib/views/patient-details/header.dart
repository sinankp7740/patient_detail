import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_detail/theme/colors.dart';

class Header extends StatelessWidget {
  Header({super.key});
  final AppColors colors = AppColors();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Container(
        height: 100,
        width: size.width,
        decoration: BoxDecoration(
            color: colors.mainColor,
            image: DecorationImage(image: AssetImage('assets/images/bg1.png'))),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {},
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Patient Details",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            )
          ],
        ));
  }
}
