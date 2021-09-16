import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:ligh/Binder/BinderView.dart';
import 'package:ligh/Extensions/dialog_context.dart';
import 'package:ligh/Widgets/menu_item.dart';
import 'package:ligh/Widgets/text_widget.dart';

class MenuView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuViewState();
  }
}

class _MenuViewState extends State<MenuView> {
  _showMaterialDialog(BuildContext context, String title, String about,
      bool status, Icon icon) {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              content: dialog_context(about: about, status: status),
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                      fontWeight: FontWeight.w500,
                      text: title == "Become an Elite"
                          ? "Enter code"
                          : title == "Protection"
                              ? "Enable"
                              : title == "Themes & Personalization"
                                  ? "Customize"
                                  : title == "Dev report"
                                      ? "Write to Dev"
                                      : title == "Purchase records"
                                          ? "View records"
                                          : "Confirm",
                      fontSize: 14,
                      textAlign: TextAlign.center),
                  onPressed: () {
                    switch (title) {
                      case "Sync with contacts":
                        break;
                      case "Purchase records":
                        break;
                      case "Dev report":
                        break;
                      case "Themes & Personalization":
                        Get.back();
                        Fluttertoast.showToast(
                            msg: "Coming soon",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Color(0xff000000),
                            textColor: Color(0xffFF9C27B0),
                            fontSize: 16.0);
                        print(title);
                        break;
                      case "Protection":
                        break;
                      case "Become an Elite":
                        break;
                      case "Log out":
                        break;
                    }
                  },
                ),
              ],
            ));
  }

  List<Map<String, dynamic>> menuItems = [
    {
      "name": "Sync with contacts",
      "about":
          "By allowing access to your personal contacts they will be stored on our servers. This will help us in managing your timeline, it will "
              "also allow you to do quick actions on the background.You can always disable this function by visiting the Menu page.",
      "icon": Icon(
        Icons.sync,
        color: Colors.black,
      ),
      "function": () {}
    },
    {
      "name": "Upload & Media settings",
      "about":
          "Manage how you want people to view and use the data you provide within the app",
      "icon": Icon(
        Icons.cloud_upload_outlined,
        color: Colors.black,
      ),
      "function": () {}
    },
    {
      "name": "Purchase records",
      "about":
          "This shows all your purchase history.Whenever you make any purchase it will appear here.",
      "icon": Icon(
        Icons.payment_outlined,
        color: Colors.black,
      ),
      "function": () {}
    },
    {
      "name": "Dev report",
      "about":
          "Tell us about the experience with the app.This helps the development team to improve on the app.",
      "icon": Icon(
        Icons.bug_report_outlined,
        color: Colors.black,
      ),
      "function": () {}
    },
    {
      "name": "Themes & Personalization",
      "about":
          "Customize the look and feel of your app.This makes it suit your user experience.",
      "icon": Icon(
        Icons.workspaces_outline,
        color: Colors.black,
      ),
      "function": () {}
    },
    {
      "name": "Protection & Security",
      "about":
          "Allows you to make any action that require your attention. It also provide protection of your data",
      "icon": Icon(
        Icons.fingerprint,
        color: Colors.black,
      ),
      "function": () {}
    },
    {
      "name": "Become an Elite",
      "about":
          "This allows you to make special function giving you a chance to get paid. (Through recommendation)",
      "icon": Icon(
        Icons.api,
        color: Colors.black,
      ),
      "function": () {}
    },
    {
      "name": "Log out",
      "about": "This logs you out and require you to login.",
      "icon": Icon(
        Icons.logout,
        color: Colors.purple,
      ),
      "function": () {}
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Expanded(child: SizedBox(height: 40,)),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (context, int index) {
                return InkWell(
                  child: menu_item(
                    icon: menuItems[index]['icon'],
                    about: menuItems[index]['about'],
                    title: menuItems[index]['name'],
                  ),
                  onTap: () {
                    _showMaterialDialog(
                        context,
                        menuItems[index]['name'],
                        menuItems[index]['about'],
                        menuItems[index]['name'] == "Dev report" ? true : false,
                        menuItems[index]['icon']);
                  },
                );
              }),
        ],
      ),
    );
  }
}
