import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bottom_nav extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _bottom_navState();
  }

}

class _bottom_navState extends State<bottom_nav>{

  List<Map<String,dynamic>>iconList=[
    {
      "icon":Icon(Icons.home_outlined),
    },
    {
      "icon":Icon(Icons.pie_chart_outline_outlined),
    },
    {
      "icon":Icon(Icons.explore_outlined),
    },
    {
      "icon":Icon(Icons.settings_outlined),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50,
      color: Colors.white,
      child: Center(
        child: ListView.separated(
            itemCount: iconList.length,
            separatorBuilder: (context, index) =>Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(),
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,int index){
              return iconListUI(iconList[index]['icon']);
            }),
      ),
    );
  }

  Widget iconListUI(Widget icon){
    return Container(
      child: icon,
    );
  }
}