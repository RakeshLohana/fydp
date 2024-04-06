import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lung_disease_app/helper/about_us.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/contact_us_section.dart';
import 'package:lung_disease_app/helper/content_helper.dart';
import 'package:lung_disease_app/views/desktop_landing/components/carousal_slider.dart';
import 'package:lung_disease_app/views/desktop_landing/components/footer.dart';
import 'package:lung_disease_app/views/desktop_landing/components/header.dart';
import 'package:lung_disease_app/views/desktop_landing/main_upload_screen_desktop.dart';

class LandingDesktopView extends StatefulWidget {
  const LandingDesktopView({Key? key}) : super(key: key);

  @override
  State<LandingDesktopView> createState() => _LandingDesktopViewState();
}

class _LandingDesktopViewState extends State<LandingDesktopView> {
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 00.0);

  @override
  Widget build(BuildContext context) {
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ContentHelper.mainHeadline,
                              softWrap: true,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0XFF192A3E),
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 15.0),
                            Text(
                              ContentHelper.briefDescription,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFF192A3E),
                                // color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            InkWell(
                              borderRadius: BorderRadius.circular(10),
                              hoverColor: Color.fromARGB(74, 158, 158, 158),
                              onTap: (() {
                                //Main Upload Screen Desktop
                                Get.to(MainUploadScreenDesktop());
                              }),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 40,
                                  width: 140,
                                  child: Center(
                                    child: Text(
                                      ContentHelper.getStartedButton,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        letterSpacing: 1.5,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: MyColorHelper.buttonColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Wrap(
                            children: [
                              Image.asset(
                                MyAssetHelper.mainPicture,
                                // width: 550,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
           
                AboutUsWidget2(),
                ContactUsWidget(),
                desktopFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
