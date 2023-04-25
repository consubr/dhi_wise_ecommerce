import 'package:get/get.dart';
import 'listprice1_item_model.dart';

class ProfileMyOrdersModel {
  RxList<Listprice1ItemModel> listprice1ItemList =
      RxList.generate(2, (index) => Listprice1ItemModel());
}
