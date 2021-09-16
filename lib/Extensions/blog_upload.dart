
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ligh/Widgets/text_input_widget.dart';
import 'package:ligh/Widgets/text_widget.dart';

import 'app_bar.dart';


class blog_upload extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _blog_uploadState();
  }

}

class _blog_uploadState extends State<blog_upload>{
  int intialPageIndex=0;
  final _formKey = GlobalKey<FormBuilderState>();
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
                          text: "Written articles",
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
                        text: "Post",
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
          Expanded(child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/blog.png",
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
                    text: "Add link to article",
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
                    text: "We monitor the url links you paste. Abusive content leads to direct banning and deleting of account.View the terms and conditions for more information",
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
                              keybordType: TextInputType.url,
                              hintText: "Paste url link",
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
          ))
        ],
      ),
    );
  }

}