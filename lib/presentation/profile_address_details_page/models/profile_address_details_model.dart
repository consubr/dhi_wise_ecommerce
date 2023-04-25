import 'package:get/get.dart';
import 'listhomeaddress_item_model.dart';

class ProfileAddressDetailsModel {
  RxList<ListhomeaddressItemModel> listhomeaddressItemList =
      RxList.generate(2, (index) => ListhomeaddressItemModel());
}
