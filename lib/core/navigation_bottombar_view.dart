import 'package:doctor_application/const/hospital_const.dart';
import 'package:doctor_application/view/hospital_detail.dart';
import 'package:doctor_application/view/hospital_home.dart';
import 'package:doctor_application/view/hospital_save.dart';
import 'package:doctor_application/view/hospital_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationBarLearnView extends StatefulWidget {
  const NavigationBarLearnView({Key? key}) : super(key: key);

  @override
  State<NavigationBarLearnView> createState() => _NavigationBarLearnViewState();
}

class _NavigationBarLearnViewState extends State<NavigationBarLearnView> {
  int _selectedIndex = 0;
  List<Widget> _bottomList = [
    HospitalHome(),
    HospitalDetail(),
    HospitalSave(),
    HospitalSignUp(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedItemColor: HospitalConst.colorPurple,
        unselectedItemColor: HospitalConst.colorBlack,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.comment_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.paste), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
