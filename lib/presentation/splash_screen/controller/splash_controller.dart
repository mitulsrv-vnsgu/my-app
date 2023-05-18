import 'package:mitul_s_application165/core/app_export.dart';
import 'package:mitul_s_application165/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.productDiscoverScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
