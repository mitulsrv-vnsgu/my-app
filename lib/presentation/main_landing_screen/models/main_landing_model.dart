import 'package:get/get.dart';
import 'listitemname_item_model.dart';
import 'main_landing_item_model.dart';
import 'package:mitul_s_application165/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listprice_item_model.dart';

/// This class defines the variables used in the [main_landing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainLandingModel {
  Rx<List<ListitemnameItemModel>> listitemnameItemList =
      Rx(List.generate(3, (index) => ListitemnameItemModel()));

  Rx<List<MainLandingItemModel>> mainLandingItemList =
      Rx(List.generate(6, (index) => MainLandingItemModel()));

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<ListpriceItemModel>> listpriceItemList =
      Rx(List.generate(3, (index) => ListpriceItemModel()));
}
