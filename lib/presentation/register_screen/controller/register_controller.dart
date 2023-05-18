import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  var xyz = Get.arguments[NavigationArgs.xyz];

  var tets = Get.arguments[NavigationArgs.tets];

  var teys343 = Get.arguments[NavigationArgs.teys343];

  var sddf = Get.arguments[NavigationArgs.sddf];

  var sdsd = Get.arguments[NavigationArgs.sdsd];

  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
