import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/core/navigation_bottombar_view.dart';
import 'package:doctor_application/core/text_grey_small_view.dart';
import 'package:flutter/material.dart';

class HospitalInfo extends StatelessWidget {
  const HospitalInfo({super.key});
  final double _height = 2;
  final double _bottom = 50;
  final double _right = 60;
  final double _top = 90;
  final double _left = 80;
  final double _heighttwo = 11.8;
  final double widthtwo = 5.7;
  final double _heightThre = 6;
  final double _widthThre = 3;
  final double _heightFour = 8;
  final double _widthFour = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            _containerPurple(context),
            Positioned(
              bottom: _bottom,
              right: _right,
              child: _containerDoctorMan(context),
            ),
            Positioned(
              top: _top,
              left: _left,
              child: _containerDoctorWoman(context),
            ),
          ],
        ),
        HospitalConst.sizedBoxHeigt50,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textInfoBlack(context),
            HospitalConst.sizedBoxHeigt20,
            HospitalConst.sizedBoxHeigt10,
            _textInfoGrey(),
          ],
        ),
        HospitalConst.sizedBoxHeigt90,
        _containerIconArrow(context),
      ],
    ));
  }

  Container _containerIconArrow(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heighttwo,
      width: MediaQuery.of(context).size.width / widthtwo,
      decoration: BoxDecoration(
          color: HospitalConst.colorPurple,
          borderRadius: HospitalConst.borderRadiusCircular70),
      child: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NavigationBarLearnView()));
          },
          icon: Icon(
            Icons.arrow_forward,
            color: HospitalConst.colorWhite,
            size: 40,
          )),
    );
  }

  TextGreySmall _textInfoGrey() {
    return TextGreySmall(
      text: HospitalConst.contextInfo,
    );
  }

  Text _textInfoBlack(BuildContext context) {
    return Text(
      HospitalConst.titleInfo,
      style: Theme.of(context).textTheme.headline3?.copyWith(
          color: HospitalConst.colorBlack,
          fontWeight: FontWeight.bold,
          fontSize: 25),
    );
  }

  Container _containerDoctorWoman(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heightThre,
      width: MediaQuery.of(context).size.width / _widthThre,
      decoration: BoxDecoration(
          borderRadius: HospitalConst.borderRadiusCircular70,
          color: HospitalConst.colorDarkPink),
      child: Padding(
        padding: HospitalConst.paddingGeneral15,
        child: ClipRRect(
          borderRadius: HospitalConst.borderRadiusCircular50,
          child: Image.asset(
            HospitalConst.imageInfoTwo,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Container _containerDoctorMan(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heightFour,
      width: MediaQuery.of(context).size.width / _widthFour,
      decoration: BoxDecoration(
          borderRadius: HospitalConst.borderRadiusCircular60,
          color: HospitalConst.colorDarkBlue),
      child: Padding(
        padding: HospitalConst.paddingGeneral10,
        child: ClipRRect(
          borderRadius: HospitalConst.borderRadiusCircular50,
          child: Image.asset(
            HospitalConst.imageInfo,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Container _containerPurple(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      decoration: BoxDecoration(
        color: HospitalConst.colorPurple,
        borderRadius: BorderRadius.only(
          bottomLeft: HospitalConst.radius160,
          bottomRight: HospitalConst.radius160,
        ),
      ),
    );
  }
}
