import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ligh/Widgets/text_input_widget.dart';
import 'package:ligh/Widgets/text_widget.dart';

import 'app_bar.dart';

class collection_upload extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _collection_uploadState();
  }

}

class _collection_uploadState extends State<collection_upload> {
  List<Map<String,dynamic>>collectionType=[
    {
      "mode":"sidewards",
      "squareIchi":{
        "width":180.0,
        "height":183.0,
        "displayWidth":20.0,
        "displayHeight":20.0,
      },
      "squareNi":{
        "width":180.0,
        "height":183.0,
        "displayWidth":20.0,
        "displayHeight":20.0,
      },
      "squareSan":{
        "width":180.0,
        "height":180.0,
        "displayWidth":20.0,
        "displayHeight":20.0,
      },
      "squareYon":{
        "width":180.0,
        "height":180.0,
        "displayWidth":20.0,
        "displayHeight":20.0,
      },
    },
    {
      "mode":"downwards",
      "squareIchi":{
        "width":90.0,
        "height":350.0,
        "displayWidth":24.0,
        "displayHeight":44.0,
      },
      "squareNi":{
        "width":90.0,
        "height":350.0,
        "displayWidth":24.0,
        "displayHeight":44.0,
      },
      "squareSan":{
        "width":90.0,
        "height":350.0,
        "displayWidth":24.0,
        "displayHeight":44.0,
      },
      "squareYon":{
        "width":90.0,
        "height":350.0,
        "displayWidth":24.0,
        "displayHeight":44.0,
      },
    },
    {
      "mode":"cluster",
      "squareIchi":{
        "width":120.0,
        "height":350.0,
        "displayWidth":24.0,
        "displayHeight":44.0,
      },
      "squareNi":{
        "width":120.0,
        "height":175.0,
        "displayWidth":24.0,
        "displayHeight":20.0,
      },
      "squareSan":{
        "width":120.0,
        "height":175.0,
        "displayWidth":24.0,
        "displayHeight":20.0,
      },
      "squareYon":{
        "width":120.0,
        "height":350.0,
        "displayWidth":24.0,
        "displayHeight":44.0,
      },
    },
    {
      "mode":"nested",
      "squareIchi":{
        "width":360.0,
        "height":175.0,
        "displayWidth":74.0,
        "displayHeight":20.0,
      },
      "squareNi":{
        "width":120.0,
        "height":175.0,
        "displayWidth":20.0,
        "displayHeight":20.0,
      },
      "squareSan":{
        "width":120.0,
        "height":175.0,
        "displayWidth":20.0,
        "displayHeight":20.0,
      },
      "squareYon":{
        "width":120.0,
        "height":175.0,
        "displayWidth":20.0,
        "displayHeight":20.0,
      },
    },
  ];
  String mode="sidewards";
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                              text: "Collection",
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
                            text: "Post",
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),),
            Container(
              width: Get.width,
              color: Color(0xfff1f1f1),
              child: mode=="sidewards"?Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: collectionType[0]["squareIchi"]['width'],
                        height: collectionType[0]["squareIchi"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                      Container(
                        width: collectionType[0]["squareNi"]['width'],
                        height: collectionType[0]["squareNi"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: collectionType[0]["squareSan"]['width'],
                        height: collectionType[0]["squareSan"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                      Container(
                        width: collectionType[0]["squareYon"]['width'],
                        height: collectionType[0]["squareYon"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ):
              mode=="cluster"?Row(
                children: [
                  Container(
                    width: collectionType[2]["squareIchi"]['width'],
                    height: collectionType[2]["squareIchi"]['height'],
                    child: InkWell(
                      child: Center(
                        child: Icon(Icons.add,color: Colors.purple,),
                      ),
                      onTap: (){

                      },
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: collectionType[2]["squareNi"]['width'],
                        height: collectionType[2]["squareNi"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                      Container(
                        width: collectionType[2]["squareSan"]['width'],
                        height: collectionType[2]["squareSan"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: collectionType[2]["squareYon"]['width'],
                    height: collectionType[2]["squareYon"]['height'],
                    child: InkWell(
                      child: Center(
                        child: Icon(Icons.add,color: Colors.purple,),
                      ),
                      onTap: (){

                      },
                    ),
                  ),
                ],
              ):mode=="nested"?Column(
                children: [
                  Container(
                    width: collectionType[3]["squareIchi"]['width'],
                    height: collectionType[3]["squareIchi"]['height'],
                    child: InkWell(
                      child: Center(
                        child: Icon(Icons.add,color: Colors.purple,),
                      ),
                      onTap: (){

                      },
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: collectionType[3]["squareNi"]['width'],
                        height: collectionType[3]["squareNi"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                      Container(
                        width: collectionType[3]["squareSan"]['width'],
                        height: collectionType[3]["squareSan"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                      Container(
                        width: collectionType[3]["squareYon"]['width'],
                        height: collectionType[3]["squareYon"]['height'],
                        child: InkWell(
                          child: Center(
                            child: Icon(Icons.add,color: Colors.purple,),
                          ),
                          onTap: (){

                          },
                        ),
                      ),
                    ],
                  )
                ],
              ):Row(
                children: [
                  Container(
                    width: collectionType[1]["squareIchi"]['width'],
                    height: collectionType[1]["squareIchi"]['height'],
                    child: InkWell(
                      child: Center(
                        child: Icon(Icons.add,color: Colors.purple,),
                      ),
                      onTap: (){

                      },
                    ),
                  ),
                  Container(
                    width: collectionType[1]["squareNi"]['width'],
                    height: collectionType[1]["squareNi"]['height'],
                    child: InkWell(
                      child: Center(
                        child: Icon(Icons.add,color: Colors.purple,),
                      ),
                      onTap: (){

                      },
                    ),
                  ),
                  Container(
                    width: collectionType[1]["squareSan"]['width'],
                    height: collectionType[1]["squareSan"]['height'],
                    child: InkWell(
                      child: Center(
                        child: Icon(Icons.add,color: Colors.purple,),
                      ),
                      onTap: (){

                      },
                    ),
                  ),
                  Container(
                    width: collectionType[1]["squareYon"]['width'],
                    height: collectionType[1]["squareYon"]['height'],
                    child: InkWell(
                      child: Center(
                        child: Icon(Icons.add,color: Colors.purple,),
                      ),
                      onTap: (){

                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  text_widget(
                    color: 0xff000000,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.start,
                    font: "Lato",
                    fontSize: 16,
                    text: "Collection pattern",
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  mode==collectionType[0]["mode"]?Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[0]["squareIchi"]['displayWidth'],
                                    height: collectionType[0]["squareIchi"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[0]["squareNi"]['displayWidth'],
                                    height: collectionType[0]["squareNi"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[0]["squareSan"]['displayWidth'],
                                    height: collectionType[0]["squareSan"]['displayHeight'],
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[0]["squareYon"]['displayWidth'],
                                    height: collectionType[0]["squareYon"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 5,
                        color: Colors.purple,
                      )
                    ],
                  ):InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[0]["squareIchi"]['displayWidth'],
                                  height: collectionType[0]["squareIchi"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[0]["squareNi"]['displayWidth'],
                                  height: collectionType[0]["squareNi"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[0]["squareSan"]['displayWidth'],
                                  height: collectionType[0]["squareSan"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[0]["squareYon"]['displayWidth'],
                                  height: collectionType[0]["squareYon"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        mode=collectionType[0]["mode"];
                      });
                    },
                  ),
                  mode==collectionType[1]["mode"]?Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[1]["squareIchi"]['displayWidth'],
                                    height: collectionType[1]["squareIchi"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[1]["squareNi"]['displayWidth'],
                                    height: collectionType[1]["squareNi"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[1]["squareSan"]['displayWidth'],
                                    height: collectionType[1]["squareSan"]['displayHeight'],
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[1]["squareYon"]['displayWidth'],
                                    height: collectionType[1]["squareYon"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 5,
                        color: Colors.purple,
                      )
                    ],
                  ):InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[1]["squareIchi"]['displayWidth'],
                                  height: collectionType[1]["squareIchi"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[1]["squareNi"]['displayWidth'],
                                  height: collectionType[1]["squareNi"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[1]["squareSan"]['displayWidth'],
                                  height: collectionType[1]["squareSan"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[1]["squareYon"]['displayWidth'],
                                  height: collectionType[1]["squareYon"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        mode=collectionType[1]["mode"];
                      });
                    },
                  ),
                  mode==collectionType[2]["mode"]?Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: collectionType[2]["squareIchi"]['displayWidth'],
                                height: collectionType[2]["squareIchi"]['displayHeight'],
                                decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(2)
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[2]["squareSan"]['displayWidth'],
                                    height: collectionType[2]["squareSan"]['displayHeight'],
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[2]["squareSan"]['displayWidth'],
                                    height: collectionType[2]["squareSan"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: collectionType[2]["squareYon"]['displayWidth'],
                                height: collectionType[2]["squareYon"]['displayHeight'],
                                decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(2)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 5,
                        color: Colors.purple,
                      )
                    ],
                  ):InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              width: collectionType[2]["squareIchi"]['displayWidth'],
                              height: collectionType[2]["squareIchi"]['displayHeight'],
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff707070)),
                                  borderRadius: BorderRadius.circular(2)
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[2]["squareSan"]['displayWidth'],
                                  height: collectionType[2]["squareSan"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[2]["squareSan"]['displayWidth'],
                                  height: collectionType[2]["squareSan"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              width: collectionType[2]["squareYon"]['displayWidth'],
                              height: collectionType[2]["squareYon"]['displayHeight'],
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff707070)),
                                  borderRadius: BorderRadius.circular(2)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        mode=collectionType[2]["mode"];
                      });
                    },
                  ),
                  mode==collectionType[3]["mode"]?Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: collectionType[3]["squareIchi"]['displayWidth'],
                                height: collectionType[3]["squareIchi"]['displayHeight'],
                                decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(2)
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[2]["squareSan"]['displayWidth'],
                                    height: collectionType[2]["squareSan"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[3]["squareSan"]['displayWidth'],
                                    height: collectionType[3]["squareSan"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: collectionType[3]["squareSan"]['displayWidth'],
                                    height: collectionType[3]["squareSan"]['displayHeight'],
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff707070)),
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 5,
                        color: Colors.purple,
                      )
                    ],
                  ):InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              width: collectionType[3]["squareIchi"]['displayWidth'],
                              height: collectionType[3]["squareIchi"]['displayHeight'],
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff707070)),
                                  borderRadius: BorderRadius.circular(2)
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[2]["squareSan"]['displayWidth'],
                                  height: collectionType[2]["squareSan"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[3]["squareSan"]['displayWidth'],
                                  height: collectionType[3]["squareSan"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: collectionType[3]["squareSan"]['displayWidth'],
                                  height: collectionType[3]["squareSan"]['displayHeight'],
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        mode=collectionType[3]["mode"];
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: FormBuilder(
                key: _formKey,
                child: Column(
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
                        hintText: "Title",
                        errorText: "Field required",
                        attribute: "username",
                        function: () {
                          if(_formKey.currentState!.saveAndValidate()){

                          }
                        },
                      ),

                    ),
                    SizedBox(height: 8,),
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
                        hintText: "Comment",
                        errorText: "Field required",
                        attribute: "plot",
                        function: () {
                          if(_formKey.currentState!.saveAndValidate()){

                          }
                        },
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}