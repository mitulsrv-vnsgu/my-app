import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:mitul_s_application165/data/apiClient/api_client.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  PostLoginDeviceAuthResp postLoginDeviceAuthResp = PostLoginDeviceAuthResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/login API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callLoginDeviceAuth(Map req) async {
    try {
      postLoginDeviceAuthResp = await Get.find<ApiClient>().loginDeviceAuth(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleLoginDeviceAuthSuccess();
    } on PostLoginDeviceAuthResp catch (e) {
      postLoginDeviceAuthResp = e;
      rethrow;
    }
  }

  void _handleLoginDeviceAuthSuccess() {}
}
