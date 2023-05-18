import 'controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';

class MenuDraweritem extends StatelessWidget {
  MenuDraweritem(this.controller);

  MenuController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: getHorizontalSize(
          310,
        ),
        padding: getPadding(
          left: 67,
          top: 34,
          right: 67,
          bottom: 34,
        ),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 58,
                top: 36,
              ),
              child: Text(
                "lbl_cart".tr.toUpperCase(),
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
                left: 44,
                top: 29,
              ),
              child: Text(
                "lbl_profile".tr.toUpperCase(),
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
                left: 33,
                top: 29,
              ),
              child: Text(
                "lbl_clothing".tr.toUpperCase(),
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
                left: 51,
                top: 29,
              ),
              child: Text(
                "lbl_shoes".tr.toUpperCase(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtLatoRegular18.copyWith(
                  letterSpacing: getHorizontalSize(
                    1.08,
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomImageView(
                    svgPath: ImageConstant.img5279112cameraBlueGray10001,
                    height: getSize(
                      26,
                    ),
                    width: getSize(
                      26,
                    ),
                    margin: getMargin(
                      right: 12,
                    ),
                  ),
                ),
                Expanded(
                  child: CustomImageView(
                    svgPath: ImageConstant.img5279111networkfbsocial,
                    height: getSize(
                      26,
                    ),
                    width: getSize(
                      26,
                    ),
                    margin: getMargin(
                      left: 12,
                      right: 12,
                    ),
                  ),
                ),
                Expanded(
                  child: CustomImageView(
                    svgPath: ImageConstant.img5305160inspiraBlueGray10001,
                    height: getSize(
                      26,
                    ),
                    width: getSize(
                      26,
                    ),
                    margin: getMargin(
                      left: 12,
                      right: 12,
                    ),
                  ),
                ),
                Expanded(
                  child: CustomImageView(
                    svgPath: ImageConstant.img5279123tweettwittertwitter,
                    height: getSize(
                      26,
                    ),
                    width: getSize(
                      26,
                    ),
                    margin: getMargin(
                      left: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
