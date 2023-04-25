import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/presentation/profile_profile_info_page/models/profile_profile_info_model.dart';
import 'package:flutter/material.dart';

class ProfileProfileInfoController extends GetxController {
  ProfileProfileInfoController(this.profileProfileInfoModelObj);

  TextEditingController firstnameOneController = TextEditingController();

  TextEditingController lastnameOneController = TextEditingController();

  TextEditingController emailaddressController = TextEditingController();

  Rx<ProfileProfileInfoModel> profileProfileInfoModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstnameOneController.dispose();
    lastnameOneController.dispose();
    emailaddressController.dispose();
  }
}
