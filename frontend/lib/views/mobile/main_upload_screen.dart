import 'package:flutter/material.dart';
import 'package:lung_disease_app/controller/controller.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/custom_button.dart';
import 'package:lung_disease_app/helper/custom_text_widget.dart';



class MainUploadScreen extends StatelessWidget {
  const MainUploadScreen({super.key});



  @override
  Widget build(BuildContext context) {

    MyController _myController =MyController();

    
    double height=MediaQuery.of(context).size.height;
        // double width=MediaQuery.of(context).size.width;


    return Scaffold(
      body: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWidget(text: "Upload your X-ray",fontSize: 25 ),
                    SizedBox(height: 10),

          GestureDetector(
            onTap: (){
              _myController.pickImage();

            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              height:height*0.3 ,
              width: double.infinity,
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
          ),
            
            
                                SizedBox(height: 10),

            CustomTextWidget(text: "For accurate predictions, ensure high-quality images."),
                                SizedBox(height: 10),

             

             CustomButton(text: 'Start Scanning', onTap: () {  },)


        ]),
    );
  }
}