import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/presentation/product_discover_screen/models/product_discover_model.dart';

class ProductDiscoverController extends GetxController {
  Rx<ProductDiscoverModel> productDiscoverModelObj = ProductDiscoverModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
