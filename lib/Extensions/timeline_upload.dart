import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ligh/Functions/photoInAppCalls.dart';
import 'package:ligh/Widgets/text_widget.dart';

import 'app_bar.dart';

class timeline_upload extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _timeline_uploadState();
  }

}

class _timeline_uploadState extends State<timeline_upload> {
  photoInAppCalls photoInAppCall=photoInAppCalls();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          app_bar(
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.keyboard_backspace,
                                color: Colors.purple,
                              ),
                            ),
                            onTap: () {
                              // ignore: unnecessary_statements
                              Get.back();
                            },
                          ),
                          text_widget(
                            color: 0xff000000,
                            fontWeight: FontWeight.bold,
                            textAlign: TextAlign.start,
                            font: "Lato",
                            fontSize: 16,
                            text: "Timeline",
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Icon(
                                Icons.camera_outlined,
                                color: Color(0xff707070),
                              ),
                            ),
                            onTap: () {
                              // ignore: unnecessary_statements

                            },
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Icon(
                                Icons.photo_album_outlined,
                                color: Color(0xff707070),
                              ),
                            ),
                            onTap: () {
                              // ignore: unnecessary_statements

                            },
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text_widget(
                          color: 0xffFF9C27B0,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.start,
                          font: "Lato",
                          fontSize: 16,
                          text: "Next",
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            height: 350,
            color: Color(0xfff1f1f1),
          ),
        ],
      ),
    );
  }
}