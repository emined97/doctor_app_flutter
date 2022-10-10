import 'package:doctor_application/const/hospital_const.dart';
import 'package:flutter/material.dart';

class TextNumber extends StatelessWidget {
  const TextNumber({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? HospitalConst.stop,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: HospitalConst.colorPurple,
          fontWeight: FontWeight.bold,
          fontSize: 21),
    );
  }
}
