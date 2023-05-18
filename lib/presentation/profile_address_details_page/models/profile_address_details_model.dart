import 'package:get/get.dart';
import 'listhomeaddress_item_model.dart';

/// This class defines the variables used in the [profile_address_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileAddressDetailsModel {
  Rx<List<ListhomeaddressItemModel>> listhomeaddressItemList =
      Rx(List.generate(2, (index) => ListhomeaddressItemModel()));
}
