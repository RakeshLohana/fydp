import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
   String text;
   double? fontSize;
   FontWeight? fontWeight;
   Color? textColor;
   TextAlign? textAlign;
  String? fontFamily;
  bool isShadow;
  int? maxLines;
  CustomTextWidget(
      {super.key,
        required this.text,
        this.textColor,
        this.textAlign,
        this.fontSize,
        this.isShadow = false,
        this.fontFamily,
        this.maxLines,
        this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize ?? 12,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: textColor ?? Colors.black,
    
      ),
    );
  }
}