import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:lung_disease_app/controller/controller.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/contact_us_section.dart';
import 'package:lung_disease_app/helper/content_helper.dart';
import 'package:lung_disease_app/helper/custom_button.dart';
import 'package:lung_disease_app/helper/custom_text_widget.dart';
import 'package:lung_disease_app/views/desktop_landing/components/footer.dart';
import 'package:lung_disease_app/views/desktop_landing/components/header.dart';

import '../../helper/about_us.dart';

class MainUploadScreenDesktop extends StatelessWidget {
  const MainUploadScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    MyController myController = MyController();

final  Map<String,dynamic> resultMap=
  {
    "Cancer Found":"yes",
    " Type":"Adenocarcinoma",
    "Model Accuracy":"95 %",
    "Recommendation":"Consult with doctor immediately"
    

  };
 




    final List<String> _strings = [
      "Welcome to ProtoCodersPoint.com",
      "Get Programming Solution Here",
      "And more...",
    ];
    void _typeWrittingAnimation() {
      if (myController.currentCharIndex.value <
          _strings[myController.currentIndex.value].length) {
        myController.incrementIndex();
      } else {
        myController.currentIndex.value =
            (myController.currentIndex.value + 1) % _strings.length;
        myController.currentCharIndex.value = 0;
      }

      Future.delayed(const Duration(milliseconds: 50), () {
        _typeWrittingAnimation();
      });
    }

    return Scaffold(
      backgroundColor: MyColorHelper.bakcgroundColor,
      body: RawScrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        radius: const Radius.circular(10.0),
        trackVisibility: true,
        thumbColor: MyColorHelper.buttonColor,
        child: ListView(
          controller: _scrollController,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 40, right: 40),
                    //HEADER
                    child: desktopHeader(_scrollController, context),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 50, right: 40, bottom: 80.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: context.height * 0.8,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            padding: EdgeInsets.all(30),
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                            child: Column(children: [
                              CustomTextWidget(
                                maxLines: 3,
                                textAlign: TextAlign.left,
                                text:
                                    "For accurate predictions, ensure high-quality images.",
                                fontWeight: FontWeight.bold,
                                fontSize: 27.0,
                                textColor: Color(0XFF192A3E),
                              ),
                              Image.asset(MyAssetHelper.aboutUs),
                              SizedBox(
                                height: context.height * 0.03,
                              ),
                              Container(
                                width: context.width * 0.4,
                                padding: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: MyColorHelper.navBarColor,
                                ),
                                child: Center(
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Rubik',
                                    ),
                                    child: AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                            'Upload your lung CT-Scan image here for a quick and accurate analysis. Early detection of lung diseases is crucial for effective treatment and management'),
                                        TypewriterAnimatedText(
                                            'Your privacy is our priority; all uploaded images are securely processed and stored. For best results, ensure your CT-Scan image is clear and properly aligned'),
                                        TypewriterAnimatedText(
                                            'If you need assistance or have questions, feel free to reach out to our support team. Thank you for contributing to better lung health!'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: context.width * 0.02,
                        ),
                        Expanded(
                          child: Container(
                            height: context.height * 0.8,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            padding: EdgeInsets.all(30),
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                            child: Obx(() => myController.resultShhow.value !=
                                    true
                                ? Container(
                                    child: myController.buttonPressed.value !=
                                            true
                                        ? Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomTextWidget(
                                                text: "Upload your CT-Scan",
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              const SizedBox(height: 14),
                                              Center(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    myController.pickImage();
                                                  },
                                                  child: Obx(
                                                    () =>
                                                        myController.file ==
                                                                null
                                                            ? Container(
                                                                height: context
                                                                        .height *
                                                                    0.3,
                                                                width: context
                                                                        .width *
                                                                    0.3,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Image.asset(
                                                                      MyAssetHelper()
                                                                          .camera_image,
                                                                    ),
                                                                    SizedBox(
                                                                      height: context
                                                                              .height *
                                                                          0.03,
                                                                    ),
                                                                    CustomTextWidget(
                                                                      text:
                                                                          "Drag and Drop to upload CT-Scan",
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    )
                                                                  ],
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: MyColorHelper
                                                                            .containerColor,
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                MyColorHelper.shadowColor,
                                                                            offset:
                                                                                Offset(2, 3),
                                                                            blurRadius:
                                                                                0.2,
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(10)),
                                                              )
                                                            : Image.memory(
                                                                Uint8List.fromList(
                                                                    myController
                                                                        .file!
                                                                        .bytes!),
                                                                height: 300,
                                                                width: 300,
                                                              ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              CustomButton(
                                                text: "Start Scanning",
                                                onTap: myController.file != null
                                                    ? () {
                                                        myController
                                                            .buttonPressedMethod(
                                                                true);
                                                        Future.delayed(Duration(
                                                                seconds: 3))
                                                            .then((value) {
                                                          myController
                                                              .resultShhowMethod(
                                                                  true);

                                                          myController
                                                              .buttonPressedMethod(
                                                                  false);
                                                          _typeWrittingAnimation();
                                                        });
                                                      }
                                                    : () {
                                                        Get.snackbar(
                                                            "Select CT-Scan",
                                                            "CT-Scan of lungs is not slected",
                                                            backgroundColor:
                                                                Colors.black,
                                                            colorText:
                                                                Colors.white,
                                                            maxWidth: 400,
                                                            icon: Icon(
                                                              CupertinoIcons
                                                                  .doc_person,
                                                              color:
                                                                  Colors.white,
                                                            ));
                                                      },
                                              )
                                            ],
                                          )
                                        : Lottie.asset(
                                            'assets/images/lottie.json',
                                            height: 50),
                                  )
                                : Container(
  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

    children: [
         CustomTextWidget(
                                                text: "Result",
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              SizedBox(height: 30,),
      Column(
              mainAxisAlignment: MainAxisAlignment.center,

        children: resultMap.entries.map((entry) {
          String key = entry.key;
          dynamic value = entry.value;
      
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                width: 220,
                child: CustomTextWidget(text: key+" : ",fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "Rubik",textAlign: TextAlign.left,)),
              SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(fontSize:16 ,fontWeight: FontWeight.w300,fontFamily: "Rubik"),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        value.toString(),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }).toList(),
         // Convert the Iterable<Widget> to List<Widget>
        // Adding the CustomButton widget at the end
      ),
      SizedBox(height: 20,),
       CustomButton(
        text: "Re-Scan",
        onTap: () {
          myController.resultShhowMethod(false);
        },
      ),
    ],
  ),
),

                                   
                                )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ),
                ),
                desktopFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
