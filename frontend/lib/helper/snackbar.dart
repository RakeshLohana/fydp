import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBar{


  void showMessage(String title,String message,IconData icon )=>Get.snackbar(title, message,snackPosition:SnackPosition.BOTTOM,icon: Icon(icon));


}