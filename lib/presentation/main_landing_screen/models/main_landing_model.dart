import 'package:get/get.dart';
import 'listitemname_item_model.dart';
import 'mainlanding_item_model.dart';
import 'package:dave_app2/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listprice_item_model.dart';

class MainLandingModel {
  RxList<ListitemnameItemModel> listitemnameItemList =
      RxList.generate(3, (index) => ListitemnameItemModel());

  RxList<MainlandingItemModel> mainlandingItemList =
      RxList.generate(6, (index) => MainlandingItemModel());

  RxList<SelectionPopupModel> dropdownItemList = [
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
  ].obs;

  RxList<SelectionPopupModel> dropdownItemList1 = [
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
  ].obs;

  RxList<SelectionPopupModel> dropdownItemList2 = [
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
  ].obs;

  RxList<ListpriceItemModel> listpriceItemList =
      RxList.generate(3, (index) => ListpriceItemModel());
}
