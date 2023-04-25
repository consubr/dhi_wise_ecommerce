import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/presentation/menu_draweritem/models/menu_model.dart';

class MenuController extends GetxController {
  Rx<MenuModel> menuModelObj = MenuModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
