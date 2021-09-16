import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'Binder/BinderView.dart';
import 'Testing/TestingPage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); //Ensure plugin services are initialized
  final cameras = await availableCameras(); //Get list of available cameras
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ligh',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      initialRoute: "/Dashboard",
      getPages: [
        GetPage(name: "/Dashboard", page:()=> BinderView()),
        GetPage(name: "/TestingPage", page:()=> TestingPage()),
      ],
    );
  }
}

