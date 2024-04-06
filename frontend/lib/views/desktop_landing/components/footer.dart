import 'package:flutter/material.dart';
import 'package:lung_disease_app/helper/asset_helper.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/helper/content_helper.dart';

Widget desktopFooter() {
  return Container(
    margin: EdgeInsets.only(top: 50),
    color: MyColorHelper.containerColor,
    height: 250,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    MyAssetHelper().pulmoAI_logo,
                    height: 50,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    ContentHelper.productName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // crossAxisAlignment:
                    //     CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Solutions',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Platforms ',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'The Portal ',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Events',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // crossAxisAlignment:
                    //     CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Company',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'About Us ',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'History',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Resources',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Blog ',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Glossary',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        child: Center(
                          child: Text(
                            ContentHelper.scanButton,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: MyColorHelper.buttonColor,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: MyColorHelper.buttonColor,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      // Container(
                      //   height: 40,
                      //   width: 120,
                      //   child: const Center(
                      //     child: Text(
                      //       'Free Trial',
                      //       style: TextStyle(
                      //         fontSize: 16.0,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //   ),
                      //   decoration: const BoxDecoration(
                      //     color: Color(0xFF885Af8),
                      //     //border: Border.all(color: const Color(0xFF885Af8)),
                      //     borderRadius: BorderRadius.all(
                      //       Radius.circular(5.0),
                      //     ),
                      //   ),
                      // ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(child: Divider()),
          // const Text('© ARB Solutions. 2024')
        ],
      ),
    ),
  );
}
