import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/core/text_black_view.dart';
import 'package:doctor_application/core/text_grey_small_view.dart';
import 'package:flutter/material.dart';

class HospitalSignUp extends StatelessWidget {
  const HospitalSignUp({Key? key}) : super(key: key);
  final double _height = 5;
  final double _width = 2.5;
  final double _positionedRight = -30;
  final double _positionedTop = 10;
  final double _heightTwo = 6;
  final double _widthTwo = 3;
  final double _positionedToptwo = 60;
  final double _positionedTopthre = 65;
  final double _heightOne = 1;
  final double _widthOne = 1;
  final double _positionedTopFour = 180;
  final double _heightThre = 50;
  final double _widthThre = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _stackTextContainerTwo(context),
    );
  }

  Stack _stackTextContainerTwo(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: _positionedRight,
          child: _containerOneColor(context),
        ),
        Positioned(
          right: _positionedRight,
          top: _positionedTop,
          child: _containerTwoColor(context),
        ),
        Positioned(
          top: _positionedToptwo,
          left: _positionedTop,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _rowIconText(),
            ],
          ),
        ),
        Positioned(
          top: _positionedTopthre,
          right: _positionedTop,
          child: _stackIconClear(),
        ),
        Positioned(
          top: _positionedTopFour,
          child: Container(
            height: MediaQuery.of(context).size.height / _heightOne,
            width: MediaQuery.of(context).size.width / _widthOne,
            decoration: BoxDecoration(
                color: HospitalConst.colorContWhite,
                borderRadius: HospitalConst.borderRadiusCircular30),
            child: Padding(
              padding: HospitalConst.paddingOnlyLoginPage,
              child: Column(
                children: [
                  _columnTextBlack(),
                  HospitalConst.sizedBoxHeigt20,
                  _columnTextGrey(),
                  HospitalConst.sizedBoxHeigt20,
                  _textfieldName(),
                  HospitalConst.sizedBoxHeigt20,
                  _textfieldEmail(),
                  HospitalConst.sizedBoxHeigt20,
                  _textfieldPass(),
                  HospitalConst.sizedBoxHeigt20,
                  _textfieldAgainPass(),
                  HospitalConst.sizedBoxHeigt50,
                  _columnElevatedbutton(),
                  HospitalConst.sizedBoxHeigt10,
                  _columnRowText(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Row _columnRowText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          HospitalConst.loginText,
          style: TextStyle(color: HospitalConst.colorBlack),
        ),
        Text(
          HospitalConst.signinText,
          style: TextStyle(
              color: HospitalConst.colorGreen, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  ElevatedButton _columnElevatedbutton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          primary: HospitalConst.colorLoginElevated,
        ),
        onPressed: () {},
        child: SizedBox(
          height: _heightThre,
          width: _widthThre,
          child: Center(
            child: Text(
              HospitalConst.signUp,
              style: TextStyle(color: HospitalConst.colorWhite, fontSize: 20),
            ),
          ),
        ));
  }

  TextField _textfieldAgainPass() {
    return TextField(
      cursorColor: HospitalConst.colorDarkPurple,
      decoration: InputDecoration(
        filled: true,
        fillColor: HospitalConst.colorWhite,
        border: OutlineInputBorder(
            borderRadius: HospitalConst.borderRadiusCircular30),
        hintText: HospitalConst.enterConfirm,
      ),
      controller: TextEditingController(),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  TextField _textfieldPass() {
    return TextField(
      cursorColor: HospitalConst.colorDarkPurple,
      decoration: InputDecoration(
        filled: true,
        fillColor: HospitalConst.colorWhite,
        border: OutlineInputBorder(
            borderRadius: HospitalConst.borderRadiusCircular30),
        hintText: HospitalConst.enterPassword,
      ),
      controller: TextEditingController(),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  TextField _textfieldEmail() {
    return TextField(
      cursorColor: HospitalConst.colorDarkPurple,
      decoration: InputDecoration(
        filled: true,
        fillColor: HospitalConst.colorWhite,
        border: OutlineInputBorder(
            borderRadius: HospitalConst.borderRadiusCircular30),
        hintText: HospitalConst.enterEmail,
      ),
    );
  }

  TextField _textfieldName() {
    return TextField(
      cursorColor: HospitalConst.colorDarkPurple,
      decoration: InputDecoration(
        filled: true,
        fillColor: HospitalConst.colorWhite,
        border: OutlineInputBorder(
            borderRadius: HospitalConst.borderRadiusCircular30),
        hintText: HospitalConst.enterName,
      ),
    );
  }

  TextGreySmall _columnTextGrey() {
    return TextGreySmall(
      text: HospitalConst.signupContext,
    );
  }

  TextBlack _columnTextBlack() {
    return TextBlack(
      text: HospitalConst.regisTer,
    );
  }

  Icon _stackIconClear() {
    return Icon(
      Icons.clear,
      color: HospitalConst.colorWhite,
      size: 30,
    );
  }

  Row _rowIconText() {
    return Row(
      children: [
        Icon(
          Icons.egg_rounded,
          color: HospitalConst.colorIconrPink,
          size: 40,
        ),
        Text(
          HospitalConst.conSult,
          style: TextStyle(
              color: HospitalConst.colorTextrPink,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ],
    );
  }

  Container _containerTwoColor(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heightTwo,
      width: MediaQuery.of(context).size.width / _widthTwo,
      decoration: BoxDecoration(
          color: HospitalConst.colorContainerDark,
          borderRadius: HospitalConst.borderRadiusCircular70),
    );
  }

  Container _containerOneColor(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      decoration: BoxDecoration(
          color: HospitalConst.colorContainerPink,
          borderRadius: HospitalConst.borderRadiusCircular70),
    );
  }
}
