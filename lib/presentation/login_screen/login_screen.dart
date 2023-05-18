import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/core/utils/validation_functions.dart';
import 'package:mitul_s_application165/widgets/custom_button.dart';
import 'package:mitul_s_application165/widgets/custom_text_form_field.dart';
import 'package:mitul_s_application165/data/models/loginDeviceAuth/post_login_device_auth_req.dart';
import 'package:mitul_s_application165/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:mitul_s_application165/core/constants/test.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 16, right: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: getHorizontalSize(261),
                              margin: getMargin(left: 8, right: 88),
                              child: Text("msg_welcome_back_g".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtLatoBold24.copyWith(
                                      letterSpacing: getHorizontalSize(0.72)))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_enter_your_emai".tr,
                              margin: getMargin(top: 37),
                              padding: TextFormFieldPadding.PaddingAll12,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "msg_enter_your_pass".tr,
                              margin: getMargin(top: 15),
                              padding: TextFormFieldPadding.PaddingT15,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 12,
                                          top: 12,
                                          right: 23,
                                          bottom: 12),
                                      child: CustomImageView(
                                          svgPath: controller
                                                  .isShowPassword.value
                                              ? ImageConstant.imgEyeGray60001
                                              : ImageConstant
                                                  .imgEyeGray60001))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: controller.isShowPassword.value)),
                          CustomButton(
                              height: getVerticalSize(48),
                              text: "lbl_login".tr,
                              margin: getMargin(top: 24),
                              fontStyle: ButtonFontStyle.LatoMedium16WhiteA700,
                              onTap: () {
                                onTapLogin();
                              }),
                          Padding(
                              padding: getPadding(top: 38),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(112),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.indigo50))),
                                    Text("lbl_or_login_with".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtLatoRegular14Gray60001),
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 8),
                                        child: SizedBox(
                                            width: getHorizontalSize(111),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.indigo50)))
                                  ])),
                          Padding(
                              padding: getPadding(top: 21),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.gray200,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                        child: Container(
                                            height: getVerticalSize(56),
                                            width: getHorizontalSize(168),
                                            padding:
                                                getPadding(top: 15, bottom: 15),
                                            decoration: AppDecoration.white
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFacebookicBlueA200,
                                                  height: getSize(26),
                                                  width: getSize(26),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.gray200,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                        child: Container(
                                            height: getVerticalSize(56),
                                            width: getHorizontalSize(168),
                                            padding:
                                                getPadding(top: 15, bottom: 15),
                                            decoration: AppDecoration.white
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGoogleicRed500,
                                                  height: getSize(26),
                                                  width: getSize(26),
                                                  alignment: Alignment.center)
                                            ])))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 43, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_don_t_have_an".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray90001,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_account".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray90001,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant.gray90001,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_register_now".tr,
                                            style: TextStyle(
                                                color: ColorConstant.indigoA200,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  /// calls the [https://nodedemo.dhiwise.co/device/auth/login] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostLoginDeviceAuthReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onCallApiSuccess()` function.
  /// If the call fails, the function calls the `_onCallApiError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapLogin() async {
    if (_formKey.currentState!.validate()) {
      PostLoginDeviceAuthReq postLoginDeviceAuthReq = PostLoginDeviceAuthReq(
        username: controller.emailController.text,
        password: controller.passwordController.text,
      );
      try {
        await controller.callLoginDeviceAuth(
          postLoginDeviceAuthReq.toJson(),
        );
        _onCallApiSuccess();
      } on PostLoginDeviceAuthResp {
        _onCallApiError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  /// Navigates to the mainLandingScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the mainLandingScreen.
  /// While navigation passing ssejdn, dsd, as an argument to the
  /// mainLandingScreen
  void _onCallApiSuccess() {
    Get.toNamed(AppRoutes.mainLandingScreen,
        arguments: {NavigationArgs.ssejdn: Test.dsd});
  }

  /// Displays an alert dialog when the action is triggered.
  ///
  /// The dialog box contains a title and a message with the `sure want to delete`
  void _onCallApiError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "test",
        middleText: "sure want to delete");
  }
}
