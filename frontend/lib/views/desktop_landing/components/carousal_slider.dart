import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/custom_text_widget.dart';

class AboutUsWidget2 extends StatefulWidget {
  @override
  State<AboutUsWidget2> createState() => _AboutUsWidget2State();
}

class _AboutUsWidget2State extends State<AboutUsWidget2> {
  bool isHovered = false;

  final List<Map<String, dynamic>> slides = [
    // Introduction Slide
    {
      'title': 'Introduction',
      'content':
          '''Welcome to PulmoAI, an application dedicated to the early detection of lung cancer through the analysis of CT scans. Our mission is to provide accessible and accurate predictions to assist healthcare professionals in identifying potential cases of lung cancer at their earliest stages.
    ''',
      'image': MyAssetHelper.intro,
      'height': 300,
    },
    {
      'title': 'Understanding Prediction Classes',
      'content':
          '''1) Large Cell Carcinoma: Large cell carcinoma is a type of non-small cell lung cancer (NSCLC) that typically grows and spreads quickly. It is characterized by large, abnormal-looking cells under the microscope. Early detection is crucial for effective treatment.\n2) Adenocarcinoma: Adenocarcinoma is another common type of NSCLC. It originates in the cells that line the air sacs in the lungs. It often develops in smokers but can also affect non-smokers. Early-stage adenocarcinomas have a better prognosis compared to other types of lung cancer.\n3) Squamous Cell Carcinoma: Squamous cell carcinoma arises in the squamous cells lining the airways. It tends to be centrally located within the lungs. Smoking is a major risk factor for this type of lung cancer. Early detection is vital for improving treatment outcomes.\n4) Normal: This class indicates that no cancerous abnormalities were detected in the CT scan, providing reassurance to the patient and healthcare providers.

    ''',
      'image': MyAssetHelper.prediction,
      'height': 200,
    },
    {
      'title': 'Algorithm and Methodology',
      'content': '''
Our website utilizes Convolutional Neural Networks (CNNs) for accurate image recognition in lung cancer detection. Employing ensemble learning, we combine VGG16 and InceptionV3, renowned CNN architectures. VGG16 offers simplicity and effectiveness, while InceptionV3 excels at feature extraction. This fusion ensures unparalleled accuracy in classifying CT-scans, empowering healthcare professionals with timely insights for early detection.
    ''',
      'image': MyAssetHelper.algorithm,
      'height': 300,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: CarouselSlider(
        items: slides.map((slide) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    CustomTextWidget(
                      maxLines: 10,
                      text: slide['title']!,
                      textAlign: TextAlign.left,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      textColor: MyColorHelper.headingColor,
                      fontFamily: "Rubik",
                    ),
                    Row(
                      children: [
                        Image.asset(
                          slide["image"]!,
                          height: slide['height'],
                        ),
                        SizedBox(
                          width: context.width * 0.02,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: context.height * 0.03,
                              ),
                              Container(
                                // height: context.height * 0.5,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 20),
                                decoration: BoxDecoration(
                                  color: MyColorHelper.navBarColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: CustomTextWidget(
                                  maxLines: 26,
                                  text: slide['content']!,
                                  textAlign: TextAlign.left,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  textColor: Colors.black,
                                  fontFamily: "Rubik",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          pauseAutoPlayOnTouch: true,
          height: context.height * 0.88,
          autoPlay: !isHovered,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}
