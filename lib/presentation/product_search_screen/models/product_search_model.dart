import 'package:get/get.dart';
import 'list1_item_model.dart';

class ProductSearchModel {
  RxList<List1ItemModel> list1ItemList =
      RxList.generate(6, (index) => List1ItemModel());
}
