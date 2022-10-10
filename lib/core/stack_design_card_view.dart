import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/core/text_black_view.dart';
import 'package:doctor_application/core/text_red_view.dart';
import 'package:flutter/material.dart';

class StackDesignCardIconText extends StatelessWidget {
  const StackDesignCardIconText({
    Key? key,
    required this.text,
    required this.textwo,
    required this.image,
  }) : super(key: key);

  final String text;
  final String textwo;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 5,
          color: Color.fromARGB(207, 213, 144, 225),
          shape: RoundedRectangleBorder(
              borderRadius: HospitalConst.borderRadiusCircular30),
          child: SizedBox(
              height: MediaQuery.of(context).size.height / 4.7,
              width: MediaQuery.of(context).size.width / 2.3,
              child: Image.asset(image)),
        ),
        Positioned(
          top: 100,
          child: Container(
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width / 2.2,
            decoration: BoxDecoration(
                color: Color.fromARGB(207, 246, 246, 246),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBlack(
                  text: text,
                ),
                TextRed(
                  text: textwo,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: 75,
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 10,
                decoration: BoxDecoration(
                    color: HospitalConst.colorWhite,
                    borderRadius: HospitalConst.borderRadiusCircular70),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_camera_back_rounded,
                      color: HospitalConst.colorPurple,
                      size: 20,
                    )),
              ),
              HospitalConst.sizedBoxWidht40,
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 10,
                decoration: BoxDecoration(
                    color: HospitalConst.colorWhite,
                    borderRadius: HospitalConst.borderRadiusCircular70),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment,
                      color: HospitalConst.colorRed,
                      size: 20,
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
