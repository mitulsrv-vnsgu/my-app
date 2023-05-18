import 'controller/profile_profile_info_controller.dart';
import 'models/profile_profile_info_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/core/utils/validation_functions.dart';
import 'package:mitul_s_application165/widgets/custom_button.dart';
import 'package:mitul_s_application165/widgets/custom_text_form_field.dart';

class ProfileProfileInfoPage extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ProfileProfileInfoController controller =
      Get.put(ProfileProfileInfoController(ProfileProfileInfoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 36,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_first_name".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoMedium13Gray90002,
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.firstnameoneController,
                        hintText: "lbl_archie".tr,
                        margin: getMargin(
                          top: 15,
                        ),
                        fontStyle: TextFormFieldFontStyle.LatoRegular13,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_last_name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.lastnameoneController,
                        hintText: "lbl_copeland".tr,
                        margin: getMargin(
                          top: 15,
                        ),
                        fontStyle: TextFormFieldFontStyle.LatoRegular13,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_email_address".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.emailoneController,
                        hintText: "msg_archiecopeland_gmail_com".tr,
                        margin: getMargin(
                          top: 15,
                        ),
                        fontStyle: TextFormFieldFontStyle.LatoRegular13,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "Please enter valid email";
                          }
                          return null;
                        },
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          48,
                        ),
                        text: "lbl_save_edits".tr.toUpperCase(),
                        margin: getMargin(
                          top: 31,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
