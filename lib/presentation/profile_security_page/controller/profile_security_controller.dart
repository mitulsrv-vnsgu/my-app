import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/presentation/profile_security_page/models/profile_security_model.dart';
import 'package:flutter/material.dart';

class ProfileSecurityController extends GetxController {
  ProfileSecurityController(this.profileSecurityModelObj);

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<ProfileSecurityModel> profileSecurityModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    passwordoneController.dispose();
  }
}
