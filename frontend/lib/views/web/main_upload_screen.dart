import 'package:flutter/material.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/custom_text_widget.dart';

class MainUploadScreenWeb extends StatelessWidget {
  const MainUploadScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
       double height=MediaQuery.of(context).size.height;
        double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          CustomTextWidget(text: "Upload your X-ray",fontSize: 25 ),
          SizedBox(height: 10),

          Center(
            child: Container(
              height:height*0.3 ,
              width: width*0.3,
               child: Image.asset(MyAssetHelper().camera_image,),

              
              decoration: BoxDecoration (
                color: MyColorHelper.containerColor,
                boxShadow: [
            
                  BoxShadow(
                    color: MyColorHelper.shadowColor,
                    offset: Offset(2,3),
                    blurRadius: 0.2,
            
                  )
                ],
                borderRadius: BorderRadius.circular(10)),
            ),
          )
          


        ]),
    );
  }
}