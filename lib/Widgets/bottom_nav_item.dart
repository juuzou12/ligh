import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ligh/Widgets/text_widget.dart';

// ignore: camel_case_types
class bottom_nav_item extends StatelessWidget{
  final String font,text,onCurrentScreen;
  final Icon icons,disableIcon;
  final Function changeCurrentScreen,state;
  const bottom_nav_item({Key? key, required this.font, required this.text, required this.onCurrentScreen, required this.icons, required this.disableIcon, required this.changeCurrentScreen, required this.state}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return onCurrentScreen==text?Container(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: icons,
            ),
          ),
          text_widget(color: 0xff000000,fontWeight: FontWeight.bold,textAlign: TextAlign.center,font: font,fontSize: 13,text: text,)
        ],
      ),
    ):InkWell(
      child: Container(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: disableIcon,
              ),
            ),
            text_widget(color: 0xff707070,fontWeight: FontWeight.bold,textAlign: TextAlign.center,font: font,fontSize: 13,text: text,)
          ],
        ),
      ),
      onTap: (){
        state();
      },
    );

  }

}