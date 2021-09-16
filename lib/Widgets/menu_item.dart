import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'text_widget.dart';

class menu_item extends StatelessWidget {
  final String title, about;
  final Icon icon;

  const menu_item(
      {Key? key, required this.title, required this.about, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Get.width,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0,right: 8.0),
                  child: icon,
                ),
                Expanded(
                  child: text_widget(
                    color: 0xff000000,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.start,
                    font: "Lato",
                    fontSize: 14,
                    text: title,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: text_widget(
                  color: 0xff707070,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.start,
                  font: "Lato",
                  fontSize: 13,
                  text: about,
                ))
              ],
            )
          ],
        ),

      ),
    );
  }
}
