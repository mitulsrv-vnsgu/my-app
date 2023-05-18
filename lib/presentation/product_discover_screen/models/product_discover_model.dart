import 'package:get/get.dart';
import 'list_item_model.dart';

/// This class defines the variables used in the [product_discover_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDiscoverModel {
  Rx<List<ListItemModel>> listItemList =
      Rx(List.generate(4, (index) => ListItemModel()));
}
