import 'package:doctor_application/const/hospital_const.dart';
import 'package:flutter/material.dart';

class TextBlack extends StatelessWidget {
  const TextBlack({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? HospitalConst.stop,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: HospitalConst.colorBlack,
          fontWeight: FontWeight.bold,
          fontSize: 18),
    );
  }
}
