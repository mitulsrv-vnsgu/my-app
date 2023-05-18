import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application165/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application165/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application165/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class CartScreen extends GetWidget<CartController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            64,
          ),
          leadingWidth: 39,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgMenuBlack90001,
            margin: getMargin(
              left: 15,
              top: 18,
              bottom: 22,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_shopsie".tr,
          ),
          styleType: Style.bgFillWhiteA700,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 24,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 26,
                      ),
                      child: Text(
                        "lbl_my_cart2".tr.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoRegular18.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.08,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 26,
                      right: 16,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return Padding(
                            padding: getPadding(
                              top: 16.0,
                              bottom: 16.0,
                            ),
                            child: SizedBox(
                              width: getHorizontalSize(
                                358,
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.gray200,
                              ),
                            ),
                          );
                        },
                        itemCount: controller
                            .cartModelObj.value.cartItemList.value.length,
                        itemBuilder: (context, index) {
                          CartItemModel model = controller
                              .cartModelObj.value.cartItemList.value[index];
                          return CartItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 98,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.gray200,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_sub_total2".tr.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoSemiBold14Gray90001,
                          ),
                        ),
                        Text(
                          "lbl_111_80".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoRegular18.copyWith(
                            letterSpacing: getHorizontalSize(
                              1.08,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.gray200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(
            48,
          ),
          text: "lbl_pay_111_80".tr.toUpperCase(),
          margin: getMargin(
            left: 32,
            right: 32,
            bottom: 64,
          ),
        ),
      ),
    );
  }
}
