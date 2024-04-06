import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lung_disease_app/helper/snackbar.dart';

class MyController extends GetxController {
  var _file = Rx<PlatformFile?>(null);

  PlatformFile? get file => _file.value;

  void pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      _file.value = result.files.first;
    }
  }

  RxBool buttonPressed = false.obs;

  void buttonPressedMethod(bool value) {
    buttonPressed.value = value;
  }

  RxBool resultShhow = false.obs;

  void resultShhowMethod(bool value) {
    resultShhow.value = value;
  }

  RxInt currentIndex = 0.obs;
  RxInt currentCharIndex = 0.obs;

  void incrementIndex() {
    currentCharIndex.value++;
  }
}
