import '../profile_my_orders_page/widgets/profile_my_item_widget.dart';
import 'controller/profile_my_orders_controller.dart';
import 'models/profile_my_item_model.dart';
import 'models/profile_my_orders_model.dart';
import 'package:flutter/material.dart';
import 'package:mitul_s_application165/core/app_export.dart';

class ProfileMyOrdersPage extends StatelessWidget {
  ProfileMyOrdersController controller =
      Get.put(ProfileMyOrdersController(ProfileMyOrdersModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 36,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_orders".tr.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoSemiBold13Gray90001,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                          right: 131,
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
                                  top: 15.5,
                                  bottom: 15.5,
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
                            itemCount: controller.profileMyOrdersModelObj.value
                                .profileMyItemList.value.length,
                            itemBuilder: (context, index) {
                              ProfileMyItemModel model = controller
                                  .profileMyOrdersModelObj
                                  .value
                                  .profileMyItemList
                                  .value[index];
                              return ProfileMyItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
