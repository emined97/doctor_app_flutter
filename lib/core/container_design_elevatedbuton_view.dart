import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/core/text_black_view.dart';
import 'package:doctor_application/core/text_red_view.dart';
import 'package:flutter/material.dart';

class ContainerDesignTextElevated extends StatelessWidget {
  const ContainerDesignTextElevated({
    Key? key,
    required this.image,
    required this.text,
    required this.texttwo,
  }) : super(key: key);
  final String image;
  final String text;
  final String texttwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 224, 224, 224),
        borderRadius: HospitalConst.borderRadiusCircular10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.8,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: HospitalConst.borderRadiusCircular10),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Card(
                        elevation: 5,
                        color: Color.fromARGB(207, 213, 144, 225),
                        shape: RoundedRectangleBorder(
                            borderRadius: HospitalConst.borderRadiusCircular10),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 5,
                            child: ClipRRect(
                                borderRadius:
                                    HospitalConst.borderRadiusCircular30,
                                child: Image.asset(image))),
                      ),
                      HospitalConst.sizedBoxWidht20,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextBlack(
                            text: text,
                          ),
                          HospitalConst.sizedBoxHeigt5,
                          TextRed(
                            text: texttwo,
                          ),
                          HospitalConst.sizedBoxHeigt5,
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: HospitalConst.colorAmber,
                                size: 18,
                              ),
                              Icon(Icons.star,
                                  color: HospitalConst.colorAmber, size: 18),
                              Icon(Icons.star,
                                  color: HospitalConst.colorAmber, size: 18),
                              Icon(Icons.star,
                                  color: HospitalConst.colorAmber, size: 18),
                              Icon(Icons.star,
                                  color: HospitalConst.colorAmber, size: 18),
                              HospitalConst.sizedBoxWidht5,
                              TextBlack(
                                text: HospitalConst.rowThre,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  HospitalConst.sizedBoxHeigt10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: HospitalConst.colorPurple,
                          ),
                          Text(
                            HospitalConst.mayYearTwo,
                            style:
                                TextStyle(color: HospitalConst.colorOfPurple),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: HospitalConst.colorRed,
                          ),
                          Text(
                            HospitalConst.nineClock,
                            style: TextStyle(color: HospitalConst.colorRed),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.lens_rounded,
                            color: HospitalConst.colorGreen,
                          ),
                          Text(
                            HospitalConst.confirMed,
                            style: TextStyle(color: HospitalConst.colorGreen),
                          ),
                        ],
                      ),
                    ],
                  ),
                  HospitalConst.sizedBoxHeigt10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    HospitalConst.borderRadiusCircular10,
                              ),
                              elevation: 5,
                              primary: HospitalConst.colorOfPink),
                          onPressed: () {},
                          child: SizedBox(
                            width: 90,
                            child: Center(
                              child: Text(
                                HospitalConst.eleCancel,
                                style: TextStyle(
                                    color: HospitalConst.colorRed,
                                    fontSize: 15),
                              ),
                            ),
                          )),
                      HospitalConst.sizedBoxWidht10,
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    HospitalConst.borderRadiusCircular10,
                              ),
                              elevation: 5,
                              primary: HospitalConst.colorOfPurple),
                          onPressed: () {},
                          child: SizedBox(
                            width: 120,
                            child: Center(
                              child: Text(
                                HospitalConst.eleResh,
                                style: TextStyle(
                                    color: HospitalConst.colorWhite,
                                    fontSize: 15),
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
