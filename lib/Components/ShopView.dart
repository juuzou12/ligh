import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ligh/Widgets/FloatingSearchBar.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ShopView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ShopViewState();
  }

}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Stack(
        children: [
          Shimmer(
            duration: Duration(seconds: 1), //Default value
            interval: Duration(seconds: 1), //Default value: Duration(seconds: 0)
            color: Colors.purple, //Default value
            colorOpacity: 0.1, //Default value
            enabled: true, //Default value
            direction: ShimmerDirection.fromRightToLeft(),  //Default Value
            child: Container(
              color: Color(0xfff1f1f1),
              height: 350,
            ),
          ),
          BuildFloatingSearchBar(hint: "Search by name, price or category....",),
        ],
      ),
    );
  }
}