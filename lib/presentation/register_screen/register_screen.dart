import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/core/utils/validation_functions.dart';
import 'package:mitul_s_application165/widgets/custom_button.dart';
import 'package:mitul_s_application165/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
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
                    padding: getPadding(left: 15, top: 98, right: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_hello_register".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLatoBold24.copyWith(
                                  letterSpacing: getHorizontalSize(0.72))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.firstnameController,
                              hintText: "lbl_first_name".tr,
                              margin: getMargin(left: 1, top: 40),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.lastnameController,
                              hintText: "lbl_last_name".tr,
                              margin: getMargin(left: 1, top: 12),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(left: 1, top: 12),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(left: 1, top: 12),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          CustomButton(
                              height: getVerticalSize(48),
                              text: "lbl_register".tr,
                              margin: getMargin(left: 1, top: 24),
                              fontStyle: ButtonFontStyle.LatoMedium16WhiteA700),
                          Padding(
                              padding: getPadding(left: 1, top: 38, right: 1),
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
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtOrloginwith();
                                        },
                                        child: Text("lbl_or_login_with".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtLatoRegular14Gray60001)),
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
                              padding: getPadding(left: 1, top: 21, right: 1),
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
                                    GestureDetector(
                                        onTap: () {
                                          onTapStackgoogleic();
                                        },
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.whiteA700,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color:
                                                        ColorConstant.gray200,
                                                    width:
                                                        getHorizontalSize(1)),
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                            child: Container(
                                                height: getVerticalSize(56),
                                                width: getHorizontalSize(168),
                                                padding: getPadding(
                                                    top: 15, bottom: 15),
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
                                                      alignment:
                                                          Alignment.center)
                                                ]))))
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 43, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray90001,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_login_now".tr,
                                            style: TextStyle(
                                                color: ColorConstant.indigoA200,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  /// Requests the user's permission to access the device's contacts and retrieves
  /// the list of contacts, if permission is granted.
  ///
  /// Returns a [Future] that completes with a list of [Contact] objects if
  /// permission is granted and contacts are available, otherwise an empty list.

  onTapTxtOrloginwith() async {
    await PermissionManager.askForPermission(Permission.contacts);
    List<Contact> contactList = [];
    if (await PermissionManager.isPermissionGranted(Permission.contacts)) {
      contactList = await FlutterContacts.getContacts();
    }
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.

  onTapStackgoogleic() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
