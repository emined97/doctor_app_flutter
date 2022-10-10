import 'package:doctor_application/const/hospital_const.dart';
import 'package:flutter/material.dart';

class ColumnContainerText extends StatelessWidget {
  const ColumnContainerText({
    Key? key,
    required this.text,
    required this.image,
    required this.color,
  }) : super(key: key);

  final String text;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              image,
            )),
        HospitalConst.sizedBoxHeigt5,
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: HospitalConst.colorBlack, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
