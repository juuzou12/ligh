
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';


class story_upload extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _story_uploadState();
  }

}

class _story_uploadState extends State<story_upload>{

  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  int selectedCamera=0;
  List<File>capturedImages=[];
  late List<CameraDescription> cameras;


  initializeCamera(int cameraIndex) async{
    _controller=CameraController(cameras[cameraIndex],
    ResolutionPreset.ultraHigh);
    _initializeControllerFuture=_controller.initialize();
  }
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    initializeCamera(selectedCamera);
  }
  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the Future is complete, display the preview.
          return CameraPreview(_controller);
        } else {
          // Otherwise, display a loading indicator.
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

}