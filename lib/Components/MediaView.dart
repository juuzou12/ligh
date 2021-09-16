import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ligh/Widgets/FloatingSearchBar.dart';

class MediaView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MediaViewState();
  }

}

class _MediaViewState extends State<MediaView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Stack(
        children: [
          BuildFloatingSearchBar(hint: "Search by username, email or title....",)
        ],
      ),
    );
  }
}