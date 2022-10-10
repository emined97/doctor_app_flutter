import 'package:doctor_application/const/hospital_const.dart';
import 'package:flutter/material.dart';

class ContainerIconRow extends StatelessWidget {
  const ContainerIconRow({
    Key? key,
    required this.color,
    required this.colortwo,
    required this.icon,
  }) : super(key: key);
  final Color color;
  final Color colortwo;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 10,
      decoration: BoxDecoration(
          color: color, borderRadius: HospitalConst.borderRadiusCircular70),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: colortwo,
            size: 20,
          )),
    );
  }
}
