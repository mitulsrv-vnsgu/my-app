import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/presentation/product_page_screen/models/product_page_model.dart';

class ProductPageController extends GetxController {
  Rx<ProductPageModel> productPageModelObj = ProductPageModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
