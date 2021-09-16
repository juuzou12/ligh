import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button_widgets extends StatelessWidget{

  final Widget widget;
  final double height,width,radius;
  final int color,borderColor;

  const button_widgets({required this.widget, required this.height, required this.width, required this.radius, required this.color, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: widget,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: Color(borderColor))
      ),
    );
  }

}