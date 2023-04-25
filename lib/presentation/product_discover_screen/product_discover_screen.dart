import '../product_discover_screen/widgets/list_item_widget.dart';
import 'controller/product_discover_controller.dart';
import 'models/list_item_model.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/widgets/app_bar/appbar_image.dart';
import 'package:dave_app2/widgets/app_bar/appbar_title.dart';
import 'package:dave_app2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDiscoverScreen extends GetWidget<ProductDiscoverController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.img25326b4294154be2a5c5f0d7c083e855,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_shopsie".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 5, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(309),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .productDiscoverModelObj.value.listItemList.length,
                    itemBuilder: (context, index) {
                      ListItemModel model = controller
                          .productDiscoverModelObj.value.listItemList[index];
                      return ListItemWidget(model);
                    })))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
