import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ligh/Widgets/text_widget.dart';

class app_bar extends StatelessWidget {
  final Widget widget;

  const app_bar({Key? key, required this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        height: 90,
        child: widget,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ], color: Color(0xffF1F1F1)));
  }
}
