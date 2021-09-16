import 'package:flutter/cupertino.dart';
import 'package:ligh/Widgets/text_widget.dart';

class dialog_context extends StatelessWidget{
  final bool status;
  final String about;

  const dialog_context({Key? key, required this.status, required this.about}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: text_widget(
                    color: 0xff707070,
                    fontWeight: FontWeight.normal,
                    textAlign: TextAlign.start,
                    font: "Lato",
                    fontSize: 13,
                    text: about,
                  ))
            ],
          )
        ],
      ),
      height: about.length<100?40:80,
    );
  }

}