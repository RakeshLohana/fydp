import 'package:flutter/material.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/custom_text_widget.dart';

class LoginScreenMobile extends StatelessWidget {
  const LoginScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColorHelper.bakcgroundColor,
      body:Column(
        children: [
          CustomTextWidget(text: "Pulmo AI")

        ],
      ) ,
    );
  }
}