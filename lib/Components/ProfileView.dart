import 'package:flat_segmented_control/flat_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:ligh/Sections/progress.dart';
import 'package:ligh/Widgets/button_widgets.dart';
import 'package:ligh/Widgets/text_input_widget.dart';
import 'package:ligh/Widgets/text_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProfileView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileViewState();
  }
}

class _ProfileViewState extends State<ProfileView> {
  bool showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: 200,
                    color: Color(0xfff1f1f1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: SizedBox()),
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.account_circle_outlined),
                        )
                      ],
                    ),
                  )
                ],
              ),
              height: 240,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: text_widget(
                        color: 0xff000000,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.start,
                        font: "Lato",
                        fontSize: 16,
                        text: "Username here",
                      )),
                      showMoreDetails==false?InkWell(child: Icon(Icons.more_vert_rounded,color: Colors.purple,),
                      onTap: (){
                        setState(() {
                          showMoreDetails=true;
                        });
                      },):InkWell(
                        child: Container(
                          color: Color(0xffF1F1F1),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: text_widget(
                              color: 0xffFF9C27B0,
                              fontWeight: FontWeight.w700,
                              textAlign: TextAlign.start,
                              font: "Lato",
                              fontSize: 14,
                              text: "Edit profile",
                            ),
                          ),
                        ),
                        onTap: (){
                          _showBottomSheet(context,"username","+25479865320","Location", "Usually, a list of items. Note that unless isScrollControlled is set to true, the body of a FloatingSearchBar must not have an unbounded height meaning that shrinkWrap should be set to true on all Scrollables.",
                          );
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: text_widget(
                        color: 0xff707070,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.start,
                        font: "Lato",
                        fontSize: 14,
                        text: "email@gmail.com",
                      )),
                    ],
                  ),
                ),
              ],
            ),
            showMoreDetails == false?InkWell(
                  child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                          "Usually, a list of items. Note that unless isScrollControlled is set to true, the body of a FloatingSearchBar must not have an unbounded height meaning that shrinkWrap should be set to true on all Scrollables.",
                    )),
                  ],
              ),
            ),
              onTap: () {
                setState(() {
                  showMoreDetails = true;
                });
              },
                ): moreDetailsContainer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Color(0xff707070),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: flatSegmentedWidget(),
            ),
          ],
        ),
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  Widget moreDetailsContainer() {
    return InkWell(
      child: Container(
        width: Get.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        "Usually, a list of items. Note that unless isScrollControlled is set to true, the body of a FloatingSearchBar must not have an unbounded height meaning that shrinkWrap should be set to true on all Scrollables.",
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
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
                        text: "Phone No: 0712345678",
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
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
                        text: "Location",
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
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
                        text: "Started date",
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
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
                        text: "UserID:8VuLC1ugUBa7xPzEyKLhMqvmLN62",
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: text_widget(
                        color: 0xff000000,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.start,
                        font: "Lato",
                        fontSize: 14,
                        text: "Coins: 1200Sp",
                      )),
                  Expanded(
                      child: text_widget(
                        color: 0xffFF9C27B0,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.start,
                        font: "Lato",
                        fontSize: 14,
                        text: "Position: Elite",
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          showMoreDetails = false;
        });
      },
    );
  }

  Widget flatSegmentedWidget(){
    return FlatSegmentedControl(
      tabChildren: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/timeline.png",
            width: 24,
            height: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/collection.png",
            width: 35,
            height: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/media.png",
            width: 24,
            height: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/blog.png",
            width: 24,
            height: 24,
          ),
        ),
      ],
      childrenHeight: Get.height,
      indicatorColor: Colors.purple,
      isChildrenSwipeable: true,
      children: <Widget>[
        Center(child: Text("View 2")),
        Center(child: Text("View 3")),
        Center(child: Text("View 4")),
        Center(child: Text("View 4")),



      ],
    );
  }

  _showBottomSheet(BuildContext context,String username,String phoneNo,String location,String about) {
    final _formKey = GlobalKey<FormBuilderState>();
    showMaterialModalBottomSheet(
      context: context,
      expand: true,
      backgroundColor: Color(0xffffffff),
      builder: (context) => Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: 200,
                      color: Color(0xfff1f1f1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(child: SizedBox()),
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.account_circle_outlined),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                height: 240,
              ),
              FormBuilder(
                key: _formKey,
                  child:Column(
                    children: [
                      SizedBox(height: 16,),
                      Container(
                        child: text_input_widget(
                          color: 0xff000000,
                          height: 30,
                          fontWeight: FontWeight.normal,
                          showIcon: false,
                          fontSize: 13,
                          font: "Lato",
                          dividerColor: 0xffFFFFFF,
                          keybordType: TextInputType.emailAddress,
                          hintText: username,
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
                          fontWeight: FontWeight.normal,
                          showIcon: false,
                          fontSize: 13,
                          font: "Lato",
                          dividerColor: 0xffFFFFFF,
                          keybordType: TextInputType.phone,
                          hintText: phoneNo,
                          errorText: "Field required",
                          attribute: "phoneNo",
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
                          fontWeight: FontWeight.normal,
                          showIcon: false,
                          fontSize: 13,
                          font: "Lato",
                          dividerColor: 0xffFFFFFF,
                          keybordType: TextInputType.multiline,
                          hintText: about,
                          errorText: "Field required",
                          attribute: "location",
                          function: () {
                            if(_formKey.currentState!.saveAndValidate()){

                            }
                          },
                        ),

                      ),
                    ],
                  )),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: button_widgets(width: 100,height: 40,color: 0xffffffff,radius: 10,widget:Center(
                        child: text_widget(
                          color: 0xffFF9C27B0,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                          font: "Lato",
                          fontSize: 16,
                          text: "Cancel",
                        ),
                      ) ,borderColor: 0xffffffff,),
                      onTap: (){
                        Get.back();
                      },
                    ),
                    InkWell(
                      child: button_widgets(width: 100,height: 40,color: 0xff000000,radius: 5,widget:Center(
                        child: text_widget(
                          color: 0xfff1f1f1,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                          font: "Lato",
                          fontSize: 16,
                          text: "Change",
                        ),
                      ) ,borderColor: 0xff000000,),
                      onTap: (){
                        Fluttertoast.showToast(
                            msg: "User details changed successfully",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Color(0xff000000),
                            textColor: Color(0xffFF9C27B0),
                            fontSize: 16.0);
                        Get.back();
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      animationCurve: Curves.easeOutCubic,
      duration: Duration(seconds: 1)
    );
  }

}
