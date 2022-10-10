import 'dart:ui';

import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/core/container_design_elevatedbuton_view.dart';
import 'package:doctor_application/core/text_black_view.dart';
import 'package:doctor_application/core/text_grey_small_view.dart';
import 'package:doctor_application/core/text_purple_day_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HospitalSave extends StatelessWidget {
  const HospitalSave({Key? key}) : super(key: key);
  final double _height = 14;
  final double _width = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: HospitalConst.paddingOnlySave,
        child: Column(children: [
          _rowTwoTextSavePage(context),
          HospitalConst.sizedBoxHeigt20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _containerTimeIcon(context),
                  HospitalConst.sizedBoxWidht5,
                  _textNumberDay(context),
                  HospitalConst.sizedBoxWidht5,
                  _rowColumnDayandYear(),
                ],
              ),
              _rowUpcIcon()
            ],
          ),
          HospitalConst.sizedBoxHeigt20,
          ContainerDesignTextElevated(
              image: HospitalConst.stckDoctorTwo,
              text: HospitalConst.drSeamle,
              texttwo: HospitalConst.pediatricianC),
          HospitalConst.sizedBoxHeigt20,
          ContainerDesignTextElevated(
              image: HospitalConst.stckDoctor,
              text: HospitalConst.drJerem,
              texttwo: HospitalConst.cardioLogist)
        ]),
      ),
    );
  }

  Container _containerTimeIcon(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      decoration: BoxDecoration(
          border: Border.all(color: HospitalConst.colorPurple, width: 2),
          borderRadius: HospitalConst.borderRadiusCircular10),
      child: Icon(
        Icons.calendar_month_outlined,
        color: HospitalConst.colorRed,
        size: 40,
      ),
    );
  }

  Text _textNumberDay(BuildContext context) {
    return Text(
      HospitalConst.numberF,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: HospitalConst.colorBlack,
          fontWeight: FontWeight.bold,
          fontSize: 45),
    );
  }

  Column _rowColumnDayandYear() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextGreySmall(
          text: HospitalConst.tuesDay,
        ),
        TextBlack(
          text: HospitalConst.mayYear,
        ),
      ],
    );
  }

  Row _rowUpcIcon() {
    return Row(
      children: [
        TextDay(
          text: HospitalConst.uppComing,
        ),
        Icon(
          Icons.keyboard_arrow_down_sharp,
          color: HospitalConst.colorDarkPurple,
        ),
      ],
    );
  }

  Row _rowTwoTextSavePage(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back,
          size: 35,
          color: HospitalConst.colorPurple,
        ),
        HospitalConst.sizedBoxWidht40,
        HospitalConst.sizedBoxWidht40,
        Text(
          HospitalConst.appoIntmen,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: HospitalConst.colorPurple, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
