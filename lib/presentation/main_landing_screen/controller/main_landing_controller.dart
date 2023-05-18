import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/presentation/main_landing_screen/models/main_landing_model.dart';
import 'package:flutter/material.dart';

class MainLandingController extends GetxController {
  var ssejdn = Get.arguments[NavigationArgs.ssejdn];

  var dsd = Get.arguments[NavigationArgs.dsd];

  TextEditingController emailController = TextEditingController();

  Rx<MainLandingModel> mainLandingModelObj = MainLandingModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    mainLandingModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    mainLandingModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    mainLandingModelObj.value.dropdownItemList1.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    mainLandingModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    selectedDropDownValue2 = value as SelectionPopupModel;
    mainLandingModelObj.value.dropdownItemList2.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    mainLandingModelObj.value.dropdownItemList2.refresh();
  }
}
