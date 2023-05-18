import '../controller/main_landing_controller.dart';
import '../models/main_landing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';

// ignore: must_be_immutable
class MainLandingItemWidget extends StatelessWidget {
  MainLandingItemWidget(this.mainLandingItemModelObj);

  MainLandingItemModel mainLandingItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage15,
      height: getVerticalSize(
        58,
      ),
      width: getHorizontalSize(
        80,
      ),
    );
  }
}
