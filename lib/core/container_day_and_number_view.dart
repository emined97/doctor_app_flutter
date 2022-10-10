import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/core/text_purple_day_view.dart';
import 'package:doctor_application/core/text_purple_number_view.dart';
import 'package:flutter/material.dart';

class ContainerDayAndNumber extends StatelessWidget {
  const ContainerDayAndNumber({
    Key? key,
    required this.text,
    required this.textTwo,
  }) : super(key: key);

  final String text;
  final String textTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width / 6,
        decoration: BoxDecoration(
            border: Border.all(color: HospitalConst.colorRed, width: 2),
            borderRadius: HospitalConst.borderRadiusCircular10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextDay(
              text: text,
            ),
            // HospitalConst.sizedBoxHeigt10,
            TextNumber(
              text: textTwo,
            ),
          ],
        ));
  }
}
