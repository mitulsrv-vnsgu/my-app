import '../controller/product_page_controller.dart';
import '../models/sliderrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';

// ignore: must_be_immutable
class SliderrectangleItemWidget extends StatelessWidget {
  SliderrectangleItemWidget(this.sliderrectangleItemModelObj);

  SliderrectangleItemModel sliderrectangleItemModelObj;

  var controller = Get.find<ProductPageController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle11,
      height: getVerticalSize(
        289,
      ),
      width: getHorizontalSize(
        390,
      ),
    );
  }
}
