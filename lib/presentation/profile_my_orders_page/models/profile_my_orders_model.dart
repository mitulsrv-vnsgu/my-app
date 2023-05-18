import 'package:get/get.dart';
import 'profile_my_item_model.dart';

/// This class defines the variables used in the [profile_my_orders_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileMyOrdersModel {
  Rx<List<ProfileMyItemModel>> profileMyItemList =
      Rx(List.generate(2, (index) => ProfileMyItemModel()));
}
