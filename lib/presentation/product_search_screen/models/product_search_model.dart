import 'package:get/get.dart';
import 'list1_item_model.dart';

/// This class defines the variables used in the [product_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductSearchModel {
  Rx<List<List1ItemModel>> list1ItemList =
      Rx(List.generate(6, (index) => List1ItemModel()));
}
