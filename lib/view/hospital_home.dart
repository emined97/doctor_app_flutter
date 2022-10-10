import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/core/container_image_text_view.dart';
import 'package:doctor_application/core/stack_design_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HospitalHome extends StatelessWidget {
  HospitalHome({Key? key}) : super(key: key);
  final double _positionedTop = 70;
  final double _positionedToptwo = 20;
  final double _height = 5;
  final double _width = 1.1;
  final double _heightTwo = 3;
  final double _widthTwo = 1;
  final double _heightThre = 18;
  final double _heightFour = 14;
  final double _widthFour = 7;
  final double _heightFive = 16;
  final double _widthFive = 8;
  final double _heightSix = 6;
  final double _widthSix = 1;

  final LinearGradient _gradient = LinearGradient(
    colors: <Color>[
      HospitalConst.colorRed,
      HospitalConst.colorDarkPurple,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    _containerOneStack(context),
                  ],
                ),
                Positioned(
                  top: _positionedTop,
                  child: Padding(
                    padding: HospitalConst.paddingOnlywho,
                    child: _rowContainerTextIcon(context),
                  ),
                ),
              ],
            ),
            HospitalConst.sizedBoxHeigt10,
            Stack(
              children: [
                _containerTwoColorImage(context),
                Positioned(
                  top: _positionedToptwo,
                  child: Padding(
                    padding: HospitalConst.paddingOnlyHomeThre,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _textTitleHome(context),
                        HospitalConst.sizedBoxHeigt10,
                        _textContextHome(context),
                        HospitalConst.sizedBoxHeigt20,
                        _elevatedButtonPurple(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            HospitalConst.sizedBoxHeigt20,
            Padding(
              padding: HospitalConst.paddingOnlyHomeEight,
              child: Row(
                children: const [
                  ColumnContainerText(
                      text: HospitalConst.doctorsName,
                      image: HospitalConst.steTeskop,
                      color: HospitalConst.colorPurple),
                  HospitalConst.sizedBoxWidht10,
                  ColumnContainerText(
                      text: HospitalConst.labsName,
                      image: HospitalConst.laBs,
                      color: HospitalConst.colorOrange),
                  HospitalConst.sizedBoxWidht10,
                  ColumnContainerText(
                      text: HospitalConst.ambulanceName,
                      image: HospitalConst.ambuLance,
                      color: HospitalConst.colorDarkPink),
                  HospitalConst.sizedBoxWidht10,
                  ColumnContainerText(
                      text: HospitalConst.PharmsName,
                      image: HospitalConst.pharCm,
                      color: HospitalConst.colorOnBlue),
                ],
              ),
            ),
            HospitalConst.sizedBoxHeigt10,
            ShaderMask(
              shaderCallback: (Rect rect) {
                return _gradient.createShader(rect);
              },
              child: Padding(
                padding: HospitalConst.paddingOnlyHomeFour,
                child: _textTwoColor(context),
              ),
            ),
            HospitalConst.sizedBoxHeigt10,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: HospitalConst.paddingOnlyHomeFive,
                child: Row(
                  children: const [
                    StackDesignCardIconText(
                        text: HospitalConst.drJerem,
                        textwo: HospitalConst.cardioLogist,
                        image: HospitalConst.stckDoctor),
                    HospitalConst.sizedBoxWidht10,
                    StackDesignCardIconText(
                        text: HospitalConst.drSeamle,
                        textwo: HospitalConst.pediatricianC,
                        image: HospitalConst.stckDoctorTwo),
                    HospitalConst.sizedBoxWidht10,
                    StackDesignCardIconText(
                        text: HospitalConst.drJerem,
                        textwo: HospitalConst.cardioLogist,
                        image: HospitalConst.stckDoctor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _textTwoColor(BuildContext context) {
    return Text(
      HospitalConst.topRated,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: HospitalConst.colorWhite, fontSize: 20),
    );
  }

  Container _containerTwoColorImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      decoration: BoxDecoration(
        borderRadius: HospitalConst.borderRadiusCircular30,
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              HospitalConst.colorOfPurple,
              HospitalConst.colorOfPink,
            ]),
      ),
      child: Padding(
        padding: HospitalConst.paddingOnlyHomeSix,
        child: Image.asset(HospitalConst.femaleDoctor),
      ),
    );
  }

  Text _textContextHome(BuildContext context) {
    return Text(
      HospitalConst.homeContext,
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: HospitalConst.colorWhite),
    );
  }

  Text _textTitleHome(BuildContext context) {
    return Text(
      HospitalConst.homeTitle,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: HospitalConst.colorWhite),
    );
  }

  ElevatedButton _elevatedButtonPurple() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () {},
        child: Text(HospitalConst.eleText,
            style: TextStyle(color: HospitalConst.colorWhite)));
  }

  Container _containerOneStack(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heightTwo,
      width: MediaQuery.of(context).size.width / _widthTwo,
      decoration: BoxDecoration(
        color: HospitalConst.colorPurple,
        borderRadius: HospitalConst.borderRadiusCircular50,
      ),
      child: Padding(
        padding: HospitalConst.paddingOnlyHomeSeven,
        child: _rowTextFieldButton(context),
      ),
    );
  }

  Row _rowTextFieldButton(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Expanded(
          flex: 8,
          child: TextField(
            cursorColor: (HospitalConst.colorDarkPink),
            decoration: InputDecoration(
              filled: true,
              fillColor: HospitalConst.colorWhite,
              prefixIcon: Icon(Icons.search),
              hintText: HospitalConst.home_textfield,
            ),
          ),
        ),
        HospitalConst.sizedBoxWidht10,
        Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: HospitalConst.colorDarkPink,
                  borderRadius: HospitalConst.borderRadiusCircular10),
              height: MediaQuery.of(context).size.height / _heightThre,
              child: const Icon(Icons.manage_search_rounded,
                  size: 35, color: HospitalConst.colorWhite),
            ))
      ],
    );
  }

  Row _rowContainerTextIcon(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / _heightFour,
              width: MediaQuery.of(context).size.width / _widthFour,
              decoration: BoxDecoration(
                  borderRadius: HospitalConst.borderRadiusCircular60,
                  color: HospitalConst.colorDarkBlue),
              child: Padding(
                padding: HospitalConst.paddingGeneral4,
                child: ClipRRect(
                  borderRadius: HospitalConst.borderRadiusCircular50,
                  child: Image.asset(
                    HospitalConst.imageKullanici,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            HospitalConst.sizedBoxWidht10,
            Text(
              HospitalConst.hiHi,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: HospitalConst.colorWhite),
            ),
          ],
        ),
        HospitalConst.sizedBoxWidht100,
        Container(
          height: MediaQuery.of(context).size.height / _heightFive,
          width: MediaQuery.of(context).size.width / _widthFive,
          decoration: BoxDecoration(
              color: HospitalConst.colorWhite,
              borderRadius: HospitalConst.borderRadiusCircular70),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: HospitalConst.colorBlack,
                size: 30,
              )),
        ),
      ],
    );
  }

  Container _containerStackOne(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heightSix,
      width: MediaQuery.of(context).size.width / _widthSix,
      decoration: BoxDecoration(
        color: HospitalConst.colorPurple,
        borderRadius: HospitalConst.borderRadiusCircular50,
      ),
    );
  }
}
