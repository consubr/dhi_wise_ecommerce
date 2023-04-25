import 'package:get/get.dart';
import 'list_item_model.dart';

class ProductDiscoverModel {
  RxList<ListItemModel> listItemList =
      RxList.generate(4, (index) => ListItemModel());
}
