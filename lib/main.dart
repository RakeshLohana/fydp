import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lung_disease_app/helper/color_helper.dart';
import 'package:lung_disease_app/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lung Disease App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MyColorHelper.bakcgroundColor),
        useMaterial3: true,
      ),
      home:const HomeScreen(),
    );
  }
}


