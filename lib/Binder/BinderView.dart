import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ligh/Components/UploadScreen.dart';
import 'package:ligh/Components/MediaView.dart';
import 'package:ligh/Components/MenuView.dart';
import 'package:ligh/Components/ProfileView.dart';
import 'package:ligh/Components/ShopView.dart';
import 'package:ligh/Extensions/app_bar.dart';
import 'package:ligh/Widgets/bottom_nav_item.dart';

class BinderView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BinderViewState();
  }
}

class _BinderViewState extends State<BinderView> {
  List<Map<String, dynamic>> items = [{
      "name": "Shopping",
      "font": "Lato",
      "onCurrentScreen": "shopping",
      "icons": Icon(
        Icons.shopping_bag_outlined,
        color: Color(0xffFF9C27B0),
      ),
      "disableIcon": Icon(
        Icons.shopping_bag_outlined,
        color: Color(0xffd1d1d1),
      ),
    },{
      "name": "Media",
      "font": "Lato",
      "onCurrentScreen": "Media",
      "icons": Icon(
        Icons.tv_rounded,
        color: Color(0xffFF9C27B0),
      ),
      "disableIcon": Icon(
        Icons.tv_rounded,
        color: Color(0xffd1d1d1),
      ),
    },{
    "name": "",
    "font": "Lato",
    "onCurrentScreen": "Menu",
    "icons": Icon(
      Icons.add,
      color: Color(0xffFF9C27B0),
    ),
    "disableIcon": Icon(
      Icons.add,
      color: Color(0xffd1d1d1),
    ),
  },
    {
      "name": "Profile",
      "font": "Lato",
      "onCurrentScreen": "Profile",
      "icons": Icon(
        Icons.account_circle_outlined,
        color: Color(0xffFF9C27B0),
      ),
      "disableIcon": Icon(
        Icons.account_circle_outlined,
        color: Color(0xffd1d1d1),
      ),
    },
    {
      "name": "Settings",
      "font": "Lato",
      "onCurrentScreen": "Settings",
      "icons": Icon(
        Icons.settings_outlined,
        color: Color(0xffFF9C27B0),
      ),
      "disableIcon": Icon(
        Icons.settings_outlined,
        color: Color(0xffd1d1d1),
      ),
    },];
  int _currentIndex = 0;
  String onCurrentScreen = "Shopping";
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(_currentIndex.toString());
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          width: Get.width,
          height: 62,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: items.map((e) {
              return bottom_nav_item(
                font: e['font'],
                text: e['name'],
                onCurrentScreen: onCurrentScreen,
                icons: e['icons'],
                disableIcon: e['disableIcon'],
                changeCurrentScreen: onTabTapped,
                state: (){
                  setState(() {
                    onCurrentScreen = e['name'];
                    print(onCurrentScreen);
                  });
                },
              );
            }).toList(),
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ], color: Color(0xffF1F1F1)),
        ),
        body: onCurrentScreen=="Shopping"?ShopView():onCurrentScreen==""?UploadScreen():onCurrentScreen=="Media"?MediaView():
        onCurrentScreen=="Profile"?ProfileView():onCurrentScreen=="Settings"?MenuView():SizedBox(),
       );
  }
}
