import '../product_search_screen/widgets/list1_item_widget.dart';
import 'controller/product_search_controller.dart';
import 'models/list1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProductSearchScreen extends GetWidget<ProductSearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 11,
            top: 24,
            right: 11,
            bottom: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.group5609Controller,
                hintText: "lbl_sl_iders".tr.toUpperCase(),
                variant: TextFormFieldVariant.FillWhiteA700,
                padding: TextFormFieldPadding.PaddingT17,
                fontStyle: TextFormFieldFontStyle.LatoRegular12,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(
                    left: 10,
                    top: 18,
                    right: 6,
                    bottom: 18,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch1Gray90001,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 19,
                    right: 10,
                    bottom: 17,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClose,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 5,
                    top: 29,
                    right: 5,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          199,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          16,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          16,
                        ),
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller.productSearchModelObj.value
                          .list1ItemList.value.length,
                      itemBuilder: (context, index) {
                        List1ItemModel model = controller.productSearchModelObj
                            .value.list1ItemList.value[index];
                        return List1ItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
