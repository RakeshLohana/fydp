
import 'package:flutter/material.dart';
import 'package:lung_disease_app/helper/color_helper.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final int? maxLines;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType keyboardType;

  CustomTextField({
    required this.labelText,
    this.maxLines,
    required this.prefixIcon,
    this.obscureText = false,
     this.controller,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines?? 1,
      controller: controller??null,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        

        labelText: labelText,
        fillColor:MyColorHelper.navBarColor,
        filled: true,
    
        prefixIcon: Icon(prefixIcon),
        
    
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(width: 3, color: MyColorHelper.fieldColor),
       ),
       enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(width: 3, color: MyColorHelper.navBarColor),
       ),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      ),
    );
  }
}
