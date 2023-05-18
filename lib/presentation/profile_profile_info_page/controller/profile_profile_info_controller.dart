import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/presentation/profile_profile_info_page/models/profile_profile_info_model.dart';
import 'package:flutter/material.dart';

class ProfileProfileInfoController extends GetxController {
  ProfileProfileInfoController(this.profileProfileInfoModelObj);

  TextEditingController firstnameoneController = TextEditingController();

  TextEditingController lastnameoneController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  Rx<ProfileProfileInfoModel> profileProfileInfoModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstnameoneController.dispose();
    lastnameoneController.dispose();
    emailoneController.dispose();
  }
}
