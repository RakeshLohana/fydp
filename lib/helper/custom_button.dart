import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onTap;
  String text;
  double? fontSize;

  CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: CustomTextWidget(
          text: text,
          fontSize: fontSize ?? 15,
          fontWeight: FontWeight.w600,
          textColor: Colors.white,
        )),
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: height * 0.06,
        width: context.width * 0.3,
        decoration: BoxDecoration(
            color: MyColorHelper.buttonColor,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
