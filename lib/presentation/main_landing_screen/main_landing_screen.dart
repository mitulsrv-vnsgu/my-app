import '../main_landing_screen/widgets/listitemname_item_widget.dart';
import '../main_landing_screen/widgets/listprice_item_widget.dart';
import '../main_landing_screen/widgets/main_landing_item_widget.dart';
import 'controller/main_landing_controller.dart';
import 'models/listitemname_item_model.dart';
import 'models/listprice_item_model.dart';
import 'models/main_landing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/core/utils/validation_functions.dart';
import 'package:mitul_s_application165/widgets/app_bar/appbar_image.dart';
import 'package:mitul_s_application165/widgets/app_bar/appbar_title.dart';
import 'package:mitul_s_application165/widgets/app_bar/custom_app_bar.dart';
import 'package:mitul_s_application165/widgets/custom_button.dart';
import 'package:mitul_s_application165/widgets/custom_drop_down.dart';
import 'package:mitul_s_application165/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MainLandingScreen extends GetWidget<MainLandingController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56,
          ),
          leadingWidth: 32,
          leading: AppbarImage(
            height: getVerticalSize(
              16,
            ),
            width: getHorizontalSize(
              20,
            ),
            svgPath: ImageConstant.imgMenuBlack900,
            margin: getMargin(
              left: 12,
              top: 17,
              bottom: 22,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_shopsie".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                15,
              ),
              width: getSize(
                15,
              ),
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 16,
                top: 17,
                right: 22,
                bottom: 1,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                17,
              ),
              width: getHorizontalSize(
                18,
              ),
              svgPath: ImageConstant.imgCart,
              margin: getMargin(
                left: 10,
                top: 16,
                right: 22,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                15,
              ),
              width: getHorizontalSize(
                13,
              ),
              svgPath: ImageConstant.imgUser,
              margin: getMargin(
                left: 10,
                top: 17,
                right: 38,
                bottom: 1,
              ),
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 3,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      decoration: AppDecoration.fillGray200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              362,
                            ),
                            width: getHorizontalSize(
                              360,
                            ),
                            margin: getMargin(
                              top: 24,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage61362x360,
                                  height: getVerticalSize(
                                    362,
                                  ),
                                  width: getHorizontalSize(
                                    360,
                                  ),
                                  radius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        200,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        200,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 60,
                                      right: 59,
                                      bottom: 14,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_season_sale2".tr.toUpperCase(),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlayfairDisplayRomanBold36,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 3,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_up_to"
                                                      .tr
                                                      .toUpperCase(),
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Lato',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray90001,
                                                    fontSize: getFontSize(
                                                      48,
                                                    ),
                                                    fontFamily: 'Lato',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "lbl_60_off"
                                                      .tr
                                                      .toUpperCase(),
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray200,
                                                    fontSize: getFontSize(
                                                      36,
                                                    ),
                                                    fontFamily: 'Lato',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgUnion,
                            height: getVerticalSize(
                              48,
                            ),
                            width: getHorizontalSize(
                              134,
                            ),
                            margin: getMargin(
                              top: 32,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage60,
                            height: getVerticalSize(
                              123,
                            ),
                            width: getHorizontalSize(
                              390,
                            ),
                            margin: getMargin(
                              top: 48,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 66,
                    ),
                    child: Text(
                      "lbl_trending_now".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular18.copyWith(
                        letterSpacing: getHorizontalSize(
                          1.08,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 34,
                        right: 53,
                      ),
                      child: Row(
                        children: [
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              48,
                            ),
                            text: "lbl_all".tr,
                            padding: ButtonPadding.PaddingAll8,
                            fontStyle: ButtonFontStyle.LatoRegular13,
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              80,
                            ),
                            text: "lbl_dresses".tr,
                            margin: getMargin(
                              left: 8,
                            ),
                            variant: ButtonVariant.Stroke,
                            padding: ButtonPadding.PaddingAll8,
                            fontStyle: ButtonFontStyle.LatoRegular13Gray90001,
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              103,
                            ),
                            text: "lbl_accessories".tr,
                            margin: getMargin(
                              left: 8,
                            ),
                            variant: ButtonVariant.Stroke,
                            padding: ButtonPadding.PaddingAll8,
                            fontStyle: ButtonFontStyle.LatoRegular13Gray90001,
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              66,
                            ),
                            text: "lbl_dresses".tr,
                            margin: getMargin(
                              left: 8,
                            ),
                            variant: ButtonVariant.Stroke,
                            padding: ButtonPadding.PaddingAll8,
                            fontStyle: ButtonFontStyle.LatoRegular13Gray90001,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        320,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 16,
                            top: 32,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              height: getVerticalSize(
                                10,
                              ),
                            );
                          },
                          itemCount: controller.mainLandingModelObj.value
                              .listitemnameItemList.value.length,
                          itemBuilder: (context, index) {
                            ListitemnameItemModel model = controller
                                .mainLandingModelObj
                                .value
                                .listitemnameItemList
                                .value[index];
                            return ListitemnameItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 62,
                    ),
                    child: Text(
                      "msg_actual_categori".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular18.copyWith(
                        letterSpacing: getHorizontalSize(
                          1.08,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle7,
                    height: getVerticalSize(
                      386,
                    ),
                    width: getHorizontalSize(
                      358,
                    ),
                    margin: getMargin(
                      top: 34,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_outerwear".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoBold15,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "msg_raincoats_swea".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular12,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle7386x358,
                    height: getVerticalSize(
                      386,
                    ),
                    width: getHorizontalSize(
                      358,
                    ),
                    margin: getMargin(
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_leather_shoes".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoBold15,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "msg_shoes_sandals".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular12,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle8,
                    height: getVerticalSize(
                      386,
                    ),
                    width: getHorizontalSize(
                      358,
                    ),
                    margin: getMargin(
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Text(
                      "lbl_light_dresses".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoBold15,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Text(
                      "msg_evening_casual".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular12,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 48,
                    ),
                    child: Text(
                      "msg_only_trusted_br".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular18.copyWith(
                        letterSpacing: getHorizontalSize(
                          1.08,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 63,
                      top: 37,
                      right: 63,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            59,
                          ),
                          crossAxisCount: 3,
                          mainAxisSpacing: getHorizontalSize(
                            12,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            12,
                          ),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.mainLandingModelObj.value
                            .mainLandingItemList.value.length,
                        itemBuilder: (context, index) {
                          MainLandingItemModel model = controller
                              .mainLandingModelObj
                              .value
                              .mainLandingItemList
                              .value[index];
                          return MainLandingItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 45,
                      ),
                      padding: getPadding(
                        left: 19,
                        top: 40,
                        right: 19,
                        bottom: 40,
                      ),
                      decoration: AppDecoration.fillBlack900,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 49,
                            ),
                            child: Text(
                              "lbl_new_arrival2".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlayfairDisplayRomanRegular35
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  4.9,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 133,
                                top: 6,
                              ),
                              child: Text(
                                "lbl_fall_20212".tr.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoSemiBold14,
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Container(
                              margin: getMargin(
                                top: 69,
                              ),
                              padding: getPadding(
                                left: 18,
                                right: 18,
                              ),
                              decoration:
                                  AppDecoration.outlineBluegray10063.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL279,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    child: Container(
                                      margin: getMargin(
                                        top: 15,
                                      ),
                                      padding: getPadding(
                                        left: 10,
                                        right: 10,
                                      ),
                                      decoration: AppDecoration
                                          .outlineBluegray10075
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL279,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle1381354x292,
                                            height: getVerticalSize(
                                              354,
                                            ),
                                            width: getHorizontalSize(
                                              292,
                                            ),
                                            radius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                getHorizontalSize(
                                                  279,
                                                ),
                                              ),
                                              topRight: Radius.circular(
                                                getHorizontalSize(
                                                  279,
                                                ),
                                              ),
                                            ),
                                            margin: getMargin(
                                              top: 8,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              48,
                            ),
                            width: getHorizontalSize(
                              174,
                            ),
                            text: "lbl_explore".tr.toUpperCase(),
                            margin: getMargin(
                              top: 40,
                            ),
                            variant: ButtonVariant.FillWhiteA700,
                            fontStyle: ButtonFontStyle.LatoSemiBold13IndigoA200,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 43,
                    ),
                    child: Text(
                      "msg_recomended_look".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular18.copyWith(
                        letterSpacing: getHorizontalSize(
                          1.08,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 44,
                        right: 95,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_gender".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray60002,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          CustomDropDown(
                            width: getHorizontalSize(
                              67,
                            ),
                            focusNode: FocusNode(),
                            icon: Container(
                              margin: getMargin(
                                left: 2,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgChevronright2,
                              ),
                            ),
                            hintText: "lbl_female".tr,
                            margin: getMargin(
                              left: 10,
                              bottom: 1,
                            ),
                            items: controller.mainLandingModelObj.value
                                .dropdownItemList.value,
                            onChanged: (value) {
                              controller.onSelected(value);
                            },
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 1,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_style".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray60002,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          CustomDropDown(
                            width: getHorizontalSize(
                              87,
                            ),
                            focusNode: FocusNode(),
                            icon: Container(
                              margin: getMargin(
                                left: 2,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgChevronright2,
                              ),
                            ),
                            hintText: "lbl_partywear".tr,
                            margin: getMargin(
                              left: 10,
                              top: 1,
                            ),
                            items: controller.mainLandingModelObj.value
                                .dropdownItemList1.value,
                            onChanged: (value) {
                              controller.onSelected1(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 7,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_price_range".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: TextStyle(
                                      color: ColorConstant.gray60002,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          CustomDropDown(
                            width: getHorizontalSize(
                              31,
                            ),
                            focusNode: FocusNode(),
                            icon: Container(
                              margin: getMargin(
                                left: 2,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgChevronright2,
                              ),
                            ),
                            hintText: "lbl_all".tr,
                            margin: getMargin(
                              left: 10,
                              bottom: 1,
                            ),
                            items: controller.mainLandingModelObj.value
                                .dropdownItemList2.value,
                            onChanged: (value) {
                              controller.onSelected2(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 16,
                      top: 21,
                      right: 16,
                    ),
                    padding: getPadding(
                      all: 6,
                    ),
                    decoration: AppDecoration.stroke,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1385,
                          height: getVerticalSize(
                            407,
                          ),
                          width: getHorizontalSize(
                            346,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 31,
                          ),
                          child: Text(
                            "lbl_in_this_look".tr.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoSemiBold14Gray90001,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 35,
                            right: 80,
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
                                    top: 12.0,
                                    bottom: 12.0,
                                  ),
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      243,
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
                              itemCount: controller.mainLandingModelObj.value
                                  .listpriceItemList.value.length,
                              itemBuilder: (context, index) {
                                ListpriceItemModel model = controller
                                    .mainLandingModelObj
                                    .value
                                    .listpriceItemList
                                    .value[index];
                                return ListpriceItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray200,
                              indent: getHorizontalSize(
                                82,
                              ),
                              endIndent: getHorizontalSize(
                                21,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            48,
                          ),
                          text: "lbl_buy_it_now".tr.toUpperCase(),
                          margin: getMargin(
                            left: 10,
                            top: 19,
                            right: 10,
                            bottom: 18,
                          ),
                          variant: ButtonVariant.OutlineIndigoA200,
                          fontStyle: ButtonFontStyle.LatoSemiBold13IndigoA200,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 49,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleftGray60002,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                          margin: getMargin(
                            left: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 64,
                      ),
                      padding: getPadding(
                        left: 16,
                        top: 32,
                        right: 16,
                        bottom: 32,
                      ),
                      decoration: AppDecoration.fillBlue50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage14204x231,
                            height: getVerticalSize(
                              204,
                            ),
                            width: getHorizontalSize(
                              231,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                12,
                              ),
                            ),
                            margin: getMargin(
                              top: 8,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 42,
                            ),
                            child: Text(
                              "lbl_get_20_off".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLatoRegular18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  1.08,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 15,
                            ),
                            child: Text(
                              "msg_leave_your_emai".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLatoRegular14Gray60003,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 28,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextFormField(
                                  width: getHorizontalSize(
                                    234,
                                  ),
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "lbl_email".tr,
                                  variant: TextFormFieldVariant.FillWhiteA700ab,
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.LatoMedium13,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  },
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    40,
                                  ),
                                  width: getHorizontalSize(
                                    114,
                                  ),
                                  text: "lbl_subscribe".tr,
                                  fontStyle: ButtonFontStyle.LatoMedium13,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 16,
            right: 22,
            bottom: 46,
          ),
          decoration: AppDecoration.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "lbl_2021_shopsie".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtLatoRegular12Gray600,
              ),
              Spacer(),
              Text(
                "msg_privacy_cooki".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtLatoRegular12Gray200,
              ),
              Padding(
                padding: getPadding(
                  left: 32,
                ),
                child: Text(
                  "lbl_ts_cs".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular12Gray200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
