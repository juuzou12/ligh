import 'package:flutter/cupertino.dart';

class image_loader extends StatelessWidget{
  final String imageAsset;
  final double height,width;
  final BoxFit boxFit;
  const image_loader({Key? key, required this.imageAsset, required this.height, required this.width, required this.boxFit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(imageAsset,
    height: height,width: width,fit: boxFit,);
  }

}