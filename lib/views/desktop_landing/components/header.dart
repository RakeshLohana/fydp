import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/content_helper.dart';
import 'package:lung_disease_app/views/desktop_landing/main_upload_screen_desktop.dart';
//import 'package:marpp_web/views/pricing_page/desktop_pricing.dart';

//Header Widget of Mobile Web
Widget mobileHeader() {
  return const Text('Coming soon mobile');
}

//Header Widget of Tablet Web
Widget tabletHeader() {
  return const Text('Coming soon tablet');
}

//Header Widget of Desktop Web
//Widget desktopHeader(Function onTap) {
Widget desktopHeader(ScrollController scrollController, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: MyColorHelper.navBarColor,
      // border: Border.all(color: const Color(0xFF885Af8)),
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                MyAssetHelper().pulmoAI_logo,
                height: 50,
                //width: 600,
              ),
              const SizedBox(width: 8.0),
              Text(
                ContentHelper.productName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Rubik',
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ContentHelper.navBarItems[0],
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0XFF192A3E),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              InkWell(
                onTap: () {
                  scrollController.animateTo(
                    MediaQuery.of(context).size.height,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                borderRadius: BorderRadius.circular(20),
                highlightColor: const Color.fromARGB(124, 135, 90, 248),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ContentHelper.navBarItems[1],
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0XFF192A3E),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 40),
              InkWell(
                onTap: () {
                  scrollController.animateTo(
                    MediaQuery.of(context).size.height * 2,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                borderRadius: BorderRadius.circular(20),
                highlightColor: const Color.fromARGB(124, 135, 90, 248),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ContentHelper.navBarItems[2],
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0XFF192A3E),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              InkWell(
                onTap: () {
                  scrollController.animateTo(
                    MediaQuery.of(context).size.height * 3,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                borderRadius: BorderRadius.circular(20),
                highlightColor: const Color.fromARGB(124, 135, 90, 248),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ContentHelper.navBarItems[3],
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0XFF192A3E),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),

              const SizedBox(width: 40.0),
              InkWell(
                onTap: (() {
                  Get.to(MainUploadScreenDesktop());
                }),
                child: Container(
                  height: 40,
                  width: 120,
                  child: Center(
                    child: Text(
                      ContentHelper.scanButton,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: MyColorHelper.buttonColor,
                    //border: Border.all(color: const Color(0xFF885Af8)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
              ),

              // const Icon(Icons.search, color: Colors.white),
            ],
          ),
        ],
      ),
    ),
  );
}
