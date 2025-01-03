import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_detail/theme/colors.dart';
import 'package:patient_detail/views/patient-details/general_view.dart';

class PatientDetailsTabBar extends StatelessWidget {
  PatientDetailsTabBar({super.key});
  final AppColors colors = AppColors();
  final List<String> tabs = [
    "General",
    "Appointment",
    "Clinic notes",
  ];
  ValueNotifier<int> currentIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        ValueListenableBuilder(
            valueListenable: currentIndex,
            builder: (context, val, _) {
              return SizedBox(
                width: size.width,
                height: 35,
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          width: 16,
                        ),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      String current = tabs[index];
                      return InkWell(
                        onTap: () => currentIndex.value = index,
                        child: Container(
                          decoration: BoxDecoration(
                              color: index == val
                                  ? colors.mainColor
                                  : Colors.white),
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: size.width * 0.03),
                          child: Text(
                            current,
                            style: TextStyle(
                                color: index == val
                                    ? Colors.white
                                    : Colors.black45),
                          ),
                        ),
                      );
                    }),
              );
            }),
        Divider(
          color: Colors.grey.shade500,
        ),
        Expanded(
            child: ValueListenableBuilder(
                valueListenable: currentIndex,
                builder: (context, val, _) {
                  return GeneralView();
                }))
      ],
    );
  }
}
