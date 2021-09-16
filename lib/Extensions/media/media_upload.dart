import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ligh/Widgets/text_input_widget.dart';
import 'package:ligh/Widgets/text_widget.dart';

import '../app_bar.dart';
import 'final_media_upload.dart';

class media_upload extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _media_uploadState();
  }
}

class _media_uploadState extends State<media_upload> {
  final _formKey = GlobalKey<FormBuilderState>();
  List<Map<String,dynamic>>seriesTitles=[
    {
      "title":"Jump force",
      "about":"Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change",
      "asset": "assets/images/media.png",
    },
    {
      "title":"King slayer",
      "about":"Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change",
      "asset": "assets/images/media.png",
    },
  ];
  int intialPageIndex=0;
  PageController ? _controller;
  String categoryString="Anime";
  List<Map<String, dynamic>> category = [
    {
      "name": "Anime",
    },
    {
      "name": "Sports",
    },
    {
      "name": "LifeStyle & Health",
    },
    {
      "name": "Gaming",
    },
    {
      "name": "Fashion",
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(_controller==null){
      _controller=PageController(
        initialPage: intialPageIndex
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          app_bar(widget: Column(
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
                            onTap: (){
                              // ignore: unnecessary_statements
                              switch(intialPageIndex){
                                case 0:
                                  Get.back();
                                  break;
                                case 1:
                                  setState(() {
                                    intialPageIndex=0;
                                  });
                                  break;
                                case 2:
                                  setState(() {
                                    intialPageIndex=1;
                                  });
                                  break;
                              }

                            },
                          ),
                          text_widget(
                            color: 0xff000000,
                            fontWeight: FontWeight.bold,
                            textAlign: TextAlign.start,
                            font: "Lato",
                            fontSize: 16,
                            text: "Media & Entertainment",
                          )
                        ],
                      ),
                    ),
                    intialPageIndex!=2?InkWell(
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
                      onTap: (){
                        switch(intialPageIndex){
                          case 0:
                            setState(() {
                              intialPageIndex=1;
                            });
                            break;
                          case 1:
                            setState(() {
                              intialPageIndex=2;
                            });
                            break;
                        }

                        print(intialPageIndex);
                      },
                    ):SizedBox()
                  ],
                ),
              ],
            ),),
          Expanded(
            child: PageView(
              controller: _controller,
              physics: BouncingScrollPhysics(),
              scrollBehavior: ScrollBehavior(),
              children:[
                intialPageIndex==0?Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/media.png",
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text_widget(
                          color: 0xff000000,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.start,
                          font: "Lato",
                          fontSize: 16,
                          text: "Create a new series",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text_widget(
                          color: 0xff707070,
                          fontWeight: FontWeight.normal,
                          textAlign: TextAlign.center,
                          font: "Lato",
                          fontSize: 14,
                          text: "A series requires a cover, title, description and category.",
                        ),
                      ),
                      Container(
                        child: FormBuilder(
                            child:Column(
                              children: [
                                SizedBox(height: 16,),
                                Container(
                                  child: text_input_widget(
                                    color: 0xff000000,
                                    height: 30,
                                    fontWeight: FontWeight.bold,
                                    showIcon: false,
                                    fontSize: 13,
                                    font: "Lato",
                                    dividerColor: 0xffFFFFFF,
                                    keybordType: TextInputType.emailAddress,
                                    hintText: "Series title",
                                    errorText: "Field required",
                                    attribute: "username",
                                    function: () {
                                      if(_formKey.currentState!.saveAndValidate()){

                                      }
                                    },
                                  ),

                                ),
                              ],
                            )),
                        height: 180,
                      ),
                    ],
                  ),
                ):
                intialPageIndex==1?Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/media.png",
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text_widget(
                          color: 0xff000000,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.start,
                          font: "Lato",
                          fontSize: 16,
                          text: "Create a new series",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text_widget(
                          color: 0xff707070,
                          fontWeight: FontWeight.normal,
                          textAlign: TextAlign.center,
                          font: "Lato",
                          fontSize: 14,
                          text: "A series requires a cover, title, description and category.",
                        ),
                      ),
                      Container(
                        child: FormBuilder(
                            child:Column(
                              children: [
                                SizedBox(height: 16,),
                                Container(
                                  child: text_input_widget(
                                    color: 0xff000000,
                                    height: 30,
                                    fontWeight: FontWeight.bold,
                                    showIcon: false,
                                    fontSize: 13,
                                    font: "Lato",
                                    dividerColor: 0xffFFFFFF,
                                    keybordType: TextInputType.text,
                                    hintText: "Description",
                                    errorText: "Field required",
                                    attribute: "description",
                                    function: () {
                                      if(_formKey.currentState!.saveAndValidate()){

                                      }
                                    },
                                  ),

                                ),
                              ],
                            )),
                        height: 180,
                      ),
                    ],
                  ),
                ):Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/media.png",
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: text_widget(
                                  color: 0xff000000,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.center,
                                  font: "Lato",
                                  fontSize: 16,
                                  text:
                                  "Select which category your series will be under",
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          width: Get.width,
                          height: 50,
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: category.length,
                              itemBuilder: (context, int index) {
                                return category[index]['name']==categoryString?Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: text_widget(
                                      color: 0xffFF9C27B0,
                                      fontWeight: FontWeight.bold,
                                      textAlign: TextAlign.start,
                                      font: "Lato",
                                      fontSize: 14,
                                      text:category[index]['name']),
                                ):
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: text_widget(
                                        color: 0xff707070,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.start,
                                        font: "Lato",
                                        fontSize: 14,
                                        text:category[index]['name']),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      categoryString=category[index]['name'];
                                    });
                                  },
                                );
                              }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            width: 330,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5), color: Color(0xfff1f1f1)),
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: text_widget(
                                  color: 0xff000000,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.center,
                                  font: "Lato",
                                  fontSize: 14,
                                  text: "Add title cover",
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            Get.to(final_media_upload());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}
