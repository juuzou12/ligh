import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ligh/Widgets/text_widget.dart';

class progress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _progressState();
  }
}

class _progressState extends State<progress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: text_widget(
                      color: 0xffFF9C27B0,
                      fontWeight: FontWeight.w700,
                      textAlign: TextAlign.start,
                      font: "Lato",
                      fontSize: 16,
                      text: "Upload summary",
                    ),
                  ),
                ],
              ),
              barLines(),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0,top: 12.0),
                child: text_widget(
                  color: 0xffFF9C27B0,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.start,
                  font: "Lato",
                  fontSize: 16,
                  text: "Challenges:",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0,top: 12.0),
                child: text_widget(
                  color: 0xff707070,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.start,
                  font: "Lato",
                  fontSize: 16,
                  text: "Progress to Elite:",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(100)
                      ),
                      width: 150,
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      width: 50,
                      height: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0,top: 12.0),
                child: text_widget(
                  color: 0xffFF9C27B0,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                  font: "Lato",
                  fontSize: 14,
                  text: "Active challenges:",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget barLines(){
    List<Map<String,dynamic>>graphList=[
      {
        "color":0xff3598DC,
        'value':120.0
      },
      {
        "color":0xffE66E50,
        'value':200.0
      },
      {
        "color":0xff2A9D8F,
        'value':250.0
      },
      {
        "color":0xffba0e95,
        'value':100.0
      },
    ];
    return Container(
      child: Stack(
        children: [
          ListView.builder(
              itemCount: graphList.length,
              reverse: true,
              padding: EdgeInsets.all(10.0),
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: false,
              itemBuilder: (context,int index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: text_widget(
                            color: graphList[index]['color'],
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.start,
                            font: "Lato",
                            fontSize: 12,
                            text: "${graphList[index]['value']}",
                          ),
                        ),
                        Container(
                          height: graphList[index]['value'],
                          width: 10,

                          decoration: BoxDecoration(
                              color: Color(graphList[index]['color']),
                              borderRadius: BorderRadius.circular(10)
                          ),
                        )
                      ],
                    ),
                  ),
                );
          }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff3598DC)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: text_widget(
                        color: 0xff000000,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.start,
                        font: "Lato",
                        fontSize: 13,
                        text: "Timeline",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffE66E50)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: text_widget(
                        color: 0xff000000,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.start,
                        font: "Lato",
                        fontSize: 13,
                        text: "Collection",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2A9D8F)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: text_widget(
                        color: 0xff000000,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.start,
                        font: "Lato",
                        fontSize: 13,
                        text: "Media & Enta",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffba0e95)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: text_widget(
                        color: 0xff000000,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.start,
                        font: "Lato",
                        fontSize: 13,
                        text: "Articles",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xfff1f1f1),
          borderRadius: BorderRadius.circular(10)
      ),
      height: 350,
      width: Get.width,
    );
  }
}
