import 'package:doctor_application/const/hospital_const.dart';
import 'package:flutter/material.dart';

class TextRed extends StatelessWidget {
  const TextRed({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? HospitalConst.stop,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: HospitalConst.colorRed,
          fontWeight: FontWeight.bold,
          fontSize: 15),
    );
  }
}
