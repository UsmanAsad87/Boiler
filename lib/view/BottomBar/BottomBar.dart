import 'package:boiler/view/CustomerDetailForBoiler/CustomerDetailForBoiler.dart';
import 'package:boiler/view/HomeScreen/homeScreen.dart';
import 'package:boiler/view/Servey.dart';
import 'package:boiler/view/UserFiles/UserFiles.dart';
import 'package:boiler/view/UserFiles/UserFilesDummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../userProfile/UserProfile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List pages = [
    // InstallBoilerTechnicalSevay(),
    // RiskAssesment(),
    CustomerDetailForBoiler(),

    UserProfile(),
    //TODO: change it back to UserFiles() ,now its just to show PDF of survey
    UserFilesDummy(),
    Survey(),
    HomeScreen(),

    // RiskAssesment(),

    // UserSettings(),
  ];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.add_chart,
                    color: selectedIndex == 0 ? Colors.white : Colors.grey,
                  ),
                  Text(
                    'Install',
                    style: TextStyle(
                      color: selectedIndex == 0 ? Colors.white : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.white,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Column(
                children: [
                  Icon(
                    CupertinoIcons.person_fill,
                    color: selectedIndex == 1 ? Colors.white : Colors.grey,
                  ),
                  Text(
                    'Users',
                    style: TextStyle(
                      color: selectedIndex == 1 ? Colors.white : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.white,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.folder_copy_outlined,
                    color: selectedIndex == 2 ? Colors.white : Colors.grey,
                  ),
                  Text(
                    'Files',
                    style: TextStyle(
                      color: selectedIndex == 2 ? Colors.white : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.white,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.surfing_sharp,
                    color: selectedIndex == 3 ? Colors.white : Colors.grey,
                  ),
                  Text(
                    'Survey',
                    style: TextStyle(
                      color: selectedIndex == 3 ? Colors.white : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.white,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.install_mobile_outlined,
                    color: selectedIndex == 4 ? Colors.white : Colors.grey,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(
                      color: selectedIndex == 4 ? Colors.white : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
