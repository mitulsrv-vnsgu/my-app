import '../product_discover_screen/widgets/list_item_widget.dart';
import 'controller/product_discover_controller.dart';
import 'models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application165/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application165/widgets/app_bar/custom_app_bar.dart';

class ProductDiscoverScreen extends GetWidget<ProductDiscoverController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftGray90001,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_shopsie".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 5, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(309),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.productDiscoverModelObj.value
                        .listItemList.value.length,
                    itemBuilder: (context, index) {
                      ListItemModel model = controller.productDiscoverModelObj
                          .value.listItemList.value[index];
                      return ListItemWidget(model);
                    })))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft() {
    Get.back();
  }
}
