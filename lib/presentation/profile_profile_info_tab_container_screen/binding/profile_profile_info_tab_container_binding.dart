import '../controller/profile_profile_info_tab_container_controller.dart';
import 'package:get/get.dart';

class ProfileProfileInfoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileProfileInfoTabContainerController());
  }
}
