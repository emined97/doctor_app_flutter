import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/core/container_day_and_number_view.dart';
import 'package:doctor_application/core/container_icon_row_view.dart';
import 'package:doctor_application/core/text_black_view.dart';
import 'package:doctor_application/core/text_grey_small_view.dart';
import 'package:doctor_application/core/text_red_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HospitalDetail extends StatefulWidget {
  const HospitalDetail({Key? key}) : super(key: key);

  @override
  State<HospitalDetail> createState() => _HospitalDetailState();
}

class _HospitalDetailState extends State<HospitalDetail>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  static const List<Tab> _tabBar = [
    Tab(
      child: ContainerDayAndNumber(
          text: HospitalConst.dayM, textTwo: HospitalConst.numberM),
      height: 50,
    ),
    Tab(
      child: ContainerDayAndNumber(
          text: HospitalConst.dayT, textTwo: HospitalConst.numberT),
      height: 50,
    ),
    Tab(
      child: ContainerDayAndNumber(
          text: HospitalConst.dayW, textTwo: HospitalConst.numberW),
      height: 50,
    ),
    Tab(
      child: ContainerDayAndNumber(
          text: HospitalConst.dayTh, textTwo: HospitalConst.numberTh),
      height: 50,
    ),
    Tab(
      child: ContainerDayAndNumber(
          text: HospitalConst.dayF, textTwo: HospitalConst.numberF),
      height: 50,
    ),
  ];
  final double _height = 1;

  final double _heightTwo = 7;

  final double _width = 1.2;
  final double _heightThre = 16;
  final double _heightFour = 8;
  final double _widthFour = 4;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBar.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBar.length,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HospitalConst.colorPurple,
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: HospitalConst.paddingOnlyDetail,
                  child: _rowThreeTextIcon(context),
                ),
                HospitalConst.sizedBoxHeigt20,
                Container(
                  height: MediaQuery.of(context).size.height / _height,
                  decoration: BoxDecoration(
                      color: HospitalConst.colorWhite,
                      borderRadius: HospitalConst.borderRadiusCircular30),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                        padding: HospitalConst.paddingOnlyDetailTwo,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _RowOncard(context),
                              _rowOnColumnText(),
                            ]),
                      ),
                      HospitalConst.sizedBoxHeigt10,
                      _containerBorderallPurple(context),
                      HospitalConst.sizedBoxHeigt10,
                      Padding(
                        padding: HospitalConst.paddingOnlyDetailFive,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _textRowAbout(),
                            _textRowSeereviews(context),
                          ],
                        ),
                      ),
                      HospitalConst.sizedBoxHeigt10,
                      Padding(
                        padding: HospitalConst.paddingOnlyDetailSix,
                        child: _textGreySmallContext(),
                      ),
                      HospitalConst.sizedBoxHeigt10,
                      Padding(
                        padding: HospitalConst.paddingOnlyDetailThre,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                _rowIconClock(),
                                HospitalConst.sizedBoxWidht10,
                                _rowTextWorking(),
                              ],
                            ),
                            HospitalConst.sizedBoxHeigt10,
                            _rowHoursContext(),
                            HospitalConst.sizedBoxHeigt10,
                            _rowTextMakeapp(),
                          ],
                        ),
                      ),
                      HospitalConst.sizedBoxHeigt20,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            TabBar(
                              tabs: _tabBar,
                              controller: _tabController,
                              labelColor: HospitalConst.colorBlack,
                              unselectedLabelColor: HospitalConst.colorRed,
                              isScrollable: true,
                              indicator: BoxDecoration(
                                  borderRadius:
                                      HospitalConst.borderRadiusCircular90,
                                  color: HospitalConst.colorOfPurple),
                            ),
                          ],
                        ),
                      ),
                      HospitalConst.sizedBoxHeigt20,
                      _containerTextButtonTwoColor(context),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _containerTextButtonTwoColor(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heightThre,
      width: MediaQuery.of(context).size.width / _width,
      decoration: BoxDecoration(
        borderRadius: HospitalConst.borderRadiusCircular30,
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              HospitalConst.colorOfPurple,
              HospitalConst.colorOfPink,
            ]),
      ),
      child: TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.bookmark_sharp, color: HospitalConst.colorWhite),
          label: Text(
            HospitalConst.bookApp,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: HospitalConst.colorWhite, fontSize: 18),
          )),
    );
  }

  TextGreySmall _textGreySmallContext() {
    return TextGreySmall(
      text: HospitalConst.detailContext,
    );
  }

  Text _textRowSeereviews(BuildContext context) {
    return Text(
      HospitalConst.seeReviews,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: HospitalConst.colorPurple, fontWeight: FontWeight.bold),
    );
  }

  TextBlack _textRowAbout() {
    return TextBlack(
      text: HospitalConst.aboutDoctor,
    );
  }

  Container _containerBorderallPurple(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _heightTwo,
      width: MediaQuery.of(context).size.width / _width,
      decoration: BoxDecoration(
        border: Border.all(
          color: HospitalConst.colorDarkPink,
          width: 2,
        ),
        borderRadius: HospitalConst.borderRadiusCircular10,
      ),
      child: Padding(
        padding: HospitalConst.paddingOnlyDetailFour,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _containerRowColumnTextOne(context),
            _containerRowColumnTextTwo(context),
            _containerRowColumnTextThre(context),
          ],
        ),
      ),
    );
  }

  TextBlack _rowTextMakeapp() {
    return TextBlack(
      text: HospitalConst.makeApp,
    );
  }

  TextGreySmall _rowHoursContext() {
    return TextGreySmall(
      text: HospitalConst.hoursContext,
    );
  }

  TextBlack _rowTextWorking() {
    return TextBlack(
      text: HospitalConst.workingH,
    );
  }

  Icon _rowIconClock() {
    return Icon(
      Icons.access_time,
      size: 30,
      color: HospitalConst.colorDarkPurple,
    );
  }

  Column _containerRowColumnTextThre(BuildContext context) {
    return Column(
      children: [
        ContainerIconRow(
            color: HospitalConst.colorYellow,
            colortwo: HospitalConst.colorOrangeOne,
            icon: Icons.comment),
        TextGreySmall(
          text: HospitalConst.raTing,
        ),
        Text(
          HospitalConst.rowThre,
          style: Theme.of(context).textTheme.headline6?.copyWith(
              color: HospitalConst.colorAmber, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Column _containerRowColumnTextTwo(BuildContext context) {
    return Column(
      children: [
        ContainerIconRow(
            color: HospitalConst.colorDetailOfWhite,
            colortwo: HospitalConst.colorPurple,
            icon: Icons.person),
        TextGreySmall(
          text: HospitalConst.ecperiEnce,
        ),
        Text(
          HospitalConst.rowTwo,
          style: Theme.of(context).textTheme.headline6?.copyWith(
              color: HospitalConst.colorPurple, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Column _containerRowColumnTextOne(BuildContext context) {
    return Column(
      children: [
        ContainerIconRow(
            color: HospitalConst.colorDetailRowSix,
            colortwo: HospitalConst.colorPurple,
            icon: Icons.supervisor_account),
        TextGreySmall(
          text: HospitalConst.patiEnts,
        ),
        Text(
          HospitalConst.rowOne,
          style: Theme.of(context).textTheme.headline6?.copyWith(
              color: HospitalConst.colorPurple, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Column _rowOnColumnText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBlack(
          text: HospitalConst.drSeamle,
        ),
        HospitalConst.sizedBoxHeigt10,
        TextRed(
          text: HospitalConst.pediatricianC,
        ),
        HospitalConst.sizedBoxHeigt10,
        Row(
          children: const [
            ContainerIconRow(
                color: HospitalConst.colorDetailRow,
                colortwo: HospitalConst.colorPurple,
                icon: Icons.call),
            HospitalConst.sizedBoxWidht20,
            ContainerIconRow(
                color: HospitalConst.colorDetailRowTwo,
                colortwo: HospitalConst.colorDetailRowThre,
                icon: Icons.video_camera_back_rounded),
            HospitalConst.sizedBoxWidht20,
            ContainerIconRow(
                color: HospitalConst.colorDetailRowFour,
                colortwo: HospitalConst.colorDetailRowFive,
                icon: Icons.comment),
          ],
        ),
      ],
    );
  }

  Card _RowOncard(BuildContext context) {
    return Card(
      elevation: 5,
      color: HospitalConst.colorDetailCardOne,
      shape: RoundedRectangleBorder(
          borderRadius: HospitalConst.borderRadiusCircular30),
      child: SizedBox(
          height: MediaQuery.of(context).size.height / _heightFour,
          width: MediaQuery.of(context).size.width / _widthFour,
          child: ClipRRect(
              borderRadius: HospitalConst.borderRadiusCircular30,
              child: Image.asset(HospitalConst.stckDoctorTwo))),
    );
  }

  Row _rowThreeTextIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back,
          size: 30,
          color: HospitalConst.colorWhite,
        ),
        Text(
          HospitalConst.doctorDetail,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: HospitalConst.colorWhite, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.menu,
          color: HospitalConst.colorWhite,
          size: 30,
        ),
      ],
    );
  }
}
