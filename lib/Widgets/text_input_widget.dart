import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class text_input_widget extends StatelessWidget {
  final String attribute, hintText, font, errorText;
  final int color, dividerColor;
  final double fontSize, height;
  final FontWeight fontWeight;
  final TextInputType keybordType;
  final bool showIcon;
  final Function function;

  const text_input_widget(
      {required this.attribute,
      required this.hintText,
      required this.font,
      required this.errorText,
      required this.color,
      required this.dividerColor,
      required this.fontSize,
      required this.height,
      required this.fontWeight,
      required this.keybordType,
      required this.showIcon,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: FormBuilderTextField(
            name: attribute,
            textAlign:
                hintText == "Series title"||hintText=="Description"||hintText=="Paste url link"? TextAlign.center : TextAlign.start,
            style: GoogleFonts.getFont(
              font,
              color: Color(color),
              fontSize: hintText == "Series title"
                  ?16:fontSize,
              fontWeight: fontWeight,
            ),
            obscureText: hintText == "***********" ? true : false,
            validator: FormBuilderValidators.compose([
              //FormBuilderValidators.min(context, 6),
            ]),
            keyboardType: keybordType,
            maxLength: keybordType == TextInputType.phone
                ? 12
                : keybordType == TextInputType.multiline
                    ? 250
                    : hintText == "Series title"
                        ? 50
                        : hintText=="Description"||hintText=="Paste url link"||hintText.contains("plot")?300:100,
            maxLines: hintText.length> 70 ? 4 :hintText.contains("plot")?4:1,
            textCapitalization: TextCapitalization.none,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: GoogleFonts.getFont(
                font,
                color: Color(color),
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      ),
      width: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xfff1f1f1)),
    );
  }
}
