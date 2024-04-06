import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';

class AboutUsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),

      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(MyAssetHelper.aboutUs),
          SizedBox(width: context.width*0.03,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Our Story',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'At Pulmo AI, we are on a mission to revolutionize healthcare by leveraging cutting-edge artificial intelligence. Our team of dedicated professionals combines expertise in both medicine and technology to create innovative solutions for early and accurate lung disease detection.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 32.0),
                Text(
                  'Why Choose Pulmo AI?',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  '1. Advanced AI Technology: We utilize state-of-the-art AI algorithms for fast and reliable results.\n'
                  '2. Patient-Centric Approach: Our focus is on improving patient outcomes through early detection.\n'
                  '3. Team of Experts: Our multidisciplinary team brings together medical and technological expertise.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
