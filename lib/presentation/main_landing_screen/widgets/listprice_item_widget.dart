import '../controller/main_landing_controller.dart';
import '../models/listprice_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';

// ignore: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  ListpriceItemWidget(this.listpriceItemModelObj);

  ListpriceItemModel listpriceItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage56x561,
          height: getSize(
            56,
          ),
          width: getSize(
            56,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              28,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 7,
            bottom: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listpriceItemModelObj.priceTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Obx(
                  () => Text(
                    listpriceItemModelObj.descriptionTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoRegular12Gray600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
