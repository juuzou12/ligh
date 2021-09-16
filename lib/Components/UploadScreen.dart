import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ligh/Extensions/blog_upload.dart';
import 'package:ligh/Extensions/collection_upload.dart';
import 'package:ligh/Extensions/media/media_upload.dart';
import 'package:ligh/Extensions/story_upload.dart';
import 'package:ligh/Extensions/timeline_upload.dart';
import 'package:ligh/Widgets/text_widget.dart';

class UploadScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExploreViewState();
  }
}

class _ExploreViewState extends State<UploadScreen> {
  List<Map<String, dynamic>> uploadOptions = [
    {
      "name": "Story",
      "mode": "story",
      "asset": "assets/images/story.png",
    },
    {
      "name": "Timeline",
      "mode": "timeline",
      "asset": "assets/images/timeline.png",
    },
    {
      "name": "Collection",
      "mode": "collection",
      "asset": "assets/images/collection.png",
    },
    {
      "name": "Written Articles",
      "mode": "blog",
      "asset": "assets/images/blog.png",
    },
    {
      "name": "Media & Entertainment",
      "mode": "media",
      "asset": "assets/images/media.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
            ),
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: uploadOptions.length,
              itemBuilder: (context, int index) {
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Get.width,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              uploadOptions[index]['asset'],
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Expanded(
                              child: text_widget(
                            color: 0xff000000,
                            fontWeight: FontWeight.bold,
                            textAlign: TextAlign.start,
                            font: "Lato",
                            fontSize: 14,
                            text: uploadOptions[index]['name'],
                          )),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    switch (uploadOptions[index]['mode']) {
                      case "story":
                        Get.to(story_upload());
                        break;
                      case "timeline":
                        Get.to(timeline_upload());
                        break;
                      case "collection":
                        Get.to(collection_upload());
                        break;
                      case "blog":
                        Get.to(blog_upload());
                        break;
                      case "media":
                        Get.to(media_upload());
                        break;
                    }
                  },
                );
              }),
        ],
      ),
    );
  }
}
