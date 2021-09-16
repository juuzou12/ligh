import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sections/bottom_nav.dart';

class TestingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TestingPageState();
  }

}

class _TestingPageState extends State<TestingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
      bottomNavigationBar: bottom_nav(),

    );
  }
}