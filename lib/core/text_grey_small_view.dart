import 'package:doctor_application/const/hospital_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextGreySmall extends StatelessWidget {
  const TextGreySmall({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? HospitalConst.stop,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: HospitalConst.colorGrey,
          fontWeight: FontWeight.bold,
          fontSize: 18),
    );
  }
}
