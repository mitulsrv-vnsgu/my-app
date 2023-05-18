import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/presentation/profile_address_details_page/models/profile_address_details_model.dart';
import 'package:flutter/material.dart';

class ProfileAddressDetailsController extends GetxController {
  ProfileAddressDetailsController(this.profileAddressDetailsModelObj);

  TextEditingController addressController = TextEditingController();

  TextEditingController addressoneController = TextEditingController();

  TextEditingController cityoneController = TextEditingController();

  TextEditingController group5627Controller = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  Rx<ProfileAddressDetailsModel> profileAddressDetailsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    addressoneController.dispose();
    cityoneController.dispose();
    group5627Controller.dispose();
    phonenumberoneController.dispose();
  }
}
