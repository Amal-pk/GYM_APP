import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends ChangeNotifier {
  bool isTax = true;
  bool isAdmin = false;
  bool isContact = false;
  bool isCharge = false;
  isSelect(String selected) {
    log(selected);
    if (' Tax ' == selected) {
      log('1');
      isTax = true;
      isAdmin = false;
      isCharge = false;
      isContact = false;
    } else if (selected == 'Admin') {
      log('2');
      isTax = false;
      isAdmin = true;
      isCharge = false;
      isContact = false;
    } else if (selected == 'Contact') {
      log('3');
      isTax = false;
      isAdmin = false;
      isCharge = false;
      isContact = true;
    } else {
      log('4');
      isTax = false;
      isAdmin = false;
      isCharge = true;
      isContact = false;
    }
    notifyListeners();
  }

//////////////////////Tax Editing
  bool isEditTax = false;
  isEditTaxInfo() {
    isEditTax = !isEditTax;
    notifyListeners();
  }

  bool checkedValue = false;
  ischeckedValue() {
    checkedValue = !checkedValue;
    notifyListeners();
  }

//////////////////////Contact Editing
  bool isEditContact = false;
  isEditContactInfo() {
    isEditContact = !isEditContact;
    notifyListeners();
  }

/////////////////////////Contact Editing
  bool isEditCharge = false;
  isEditChargeInfo() {
    isEditCharge = !isEditCharge;
    notifyListeners();
  }
  //////////////////////GPS

  bool isGPS = false;
  gpsCheck() {
    isGPS = !isGPS;
    notifyListeners();
  }

//////////////Image Picker
  Future pickImage(File? selectedImage) async {
    final galleryImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (galleryImage == null) return;
    selectedImage = File(galleryImage.path);

    notifyListeners();
  }

  Future pickImageCamera(File? selectedImage) async {
    final cameraImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (cameraImage == null) return;
    selectedImage = File(cameraImage.path);

    notifyListeners();
  }
}
