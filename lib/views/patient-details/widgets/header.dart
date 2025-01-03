import 'dart:io';

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
        // height: 100,
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        decoration: BoxDecoration(
            color: colors.mainColor,
            image: DecorationImage(image: AssetImage('assets/images/bg1.png'))),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: colors.mainColor,
                      shape: CircleBorder()),
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Patient Details",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://imgs.search.brave.com/StlxyBoQ0njPZKEq3Y0eOAO_fMzK-NeceVXKMiXvBR8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAxLzY2LzM5LzU0/LzM2MF9GXzE2NjM5/NTQwMl9VY2JhUzVa/NVRqMXJFYk12emhI/UjFVN0RwQ2dDV2Qz/ci5qcGc"),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mohammed Anees",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Male | 39 years old | +9876543210",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "View Details",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.blue.shade900,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(
              height: size.width * 0.15,
            ),
          ],
        ));
  }
}
