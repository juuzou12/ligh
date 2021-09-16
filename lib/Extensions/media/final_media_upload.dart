import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ligh/Widgets/text_input_widget.dart';
import 'package:ligh/Widgets/text_widget.dart';

import '../app_bar.dart';
import '../dialog_context.dart';

class final_media_upload extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _final_media_uploadState();
  }
}

class _final_media_uploadState extends State<final_media_upload> {
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
    {
      "title":"Major trial",
      "about":"Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change",
      "asset": "assets/images/media.png",
    },
    {
      "title":"Major trial part 2",
      "about":"Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change",
      "asset": "assets/images/media.png",
    },
    {
      "title":"The King's taller",
      "about":"Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change",
      "asset": "assets/images/media.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                              text: "Media & Entertainment",
                            )
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
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: 200,
              color: Color(0xfff1f1f1),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8.0,right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text_widget(
                    color: 0xff000000,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.start,
                    font: "Lato",
                    fontSize: 16,
                    text: "Series title",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8.0,right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text_widget(
                    color: 0xffFF9C27B0,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.start,
                    font: "Lato",
                    fontSize: 16,
                    text: "Series category",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: text_widget(
                    color: 0xff707070,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    font: "Lato",
                    fontSize: 14,
                    text:
                        "Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change",
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Color(0xff707070),
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
                        color: 0xffFF9C27B0,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.center,
                        font: "Lato",
                        fontSize: 14,
                        text: "Upload new episode",
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  _showMaterialDialog(context,"New episode");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: Get.width,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: seriesTitles.length,
                    itemBuilder: (context, int index) {
                      return ListTile(
                        title:  text_widget(
                          color: 0xff000000,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.start,
                          font: "Lato",
                          fontSize: 16,
                          text: seriesTitles[index]['title'],
                        ),
                        subtitle: Column(
                          children: [
                            text_widget(
                              color: 0xff707070,
                              fontWeight: FontWeight.normal,
                              textAlign: TextAlign.start,
                              font: "Lato",
                              fontSize: 13,
                              text: seriesTitles[index]['about'],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                text_widget(
                                  color: 0xff000000,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.end,
                                  font: "Lato",
                                  fontSize: 10,
                                  text: "14 min",
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  _showMaterialDialog(BuildContext context, String title) {
    final _formKey = GlobalKey<FormBuilderState>();
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          content: Container(
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
                      hintText: "Episode title",
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
                      hintText: "Episode plot",
                      errorText: "Field required",
                      attribute: "plot",
                      function: () {
                        if(_formKey.currentState!.saveAndValidate()){

                        }
                      },
                    ),

                  ),
                  SizedBox(height: 8,),
                  InkWell(
                    child: Container(
                      width: 330,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5), color: Color(0xfff1f1f1)),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: text_widget(
                          color: 0xff000000,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.start,
                          font: "Lato",
                          fontSize: 14,
                          text: "Episode url",
                        ),
                      ),
                    ),
                    onTap: (){
                      Get.to(final_media_upload());
                    },
                  ),
                ],
              ),
            ),
          ),
          title: text_widget(
            color: 0xff000000,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,
            font: "Lato",
            fontSize: 14,
            text: title,
          ),
          scrollable: true,
          actions: <Widget>[
            FlatButton(
              child: text_widget(
                  color: 0xff707070,
                  font: "Lato",
                  fontWeight: FontWeight.w400,
                  text: "Cancel",
                  fontSize: 14,
                  textAlign: TextAlign.center),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: text_widget(
                  color: 0xffFF9C27B0,
                  font: "Lato",
                  fontWeight: FontWeight.bold,
                  text: "Done",
                  fontSize: 14,
                  textAlign: TextAlign.center),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }
}
