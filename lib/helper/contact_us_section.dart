import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/custom_button.dart';
import 'package:lung_disease_app/helper/custom_text_field.dart';

class ContactUsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),


      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(MyAssetHelper.contactUs),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Get in Touch',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Have questions or feedback? We would love to hear from you!',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 32.0),
                 CustomTextField(
                   labelText: 'Name', 
                   prefixIcon: Icons.person
                ),
                SizedBox(height: 16.0),
                CustomTextField(
                   labelText: 'Email', 
                   prefixIcon: Icons.mail
                ),
                SizedBox(height: 16.0),
                 CustomTextField(
                   labelText: 'Your Message',
                   maxLines: 3, 
                   prefixIcon: Icons.message,
                ),
                SizedBox(height: 32.0),
                CustomButton(text: "Submit", onTap: () {  },)
                ]
            
            ),
          ),
        ],
      ),
    );
  }
}
