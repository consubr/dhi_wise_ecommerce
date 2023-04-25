import '../product_search_screen/widgets/list1_item_widget.dart';
import 'controller/product_search_controller.dart';
import 'models/list1_item_model.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ProductSearchScreen extends GetWidget<ProductSearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 11,
            top: 24,
            right: 11,
            bottom: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                focusNode: FocusNode(),
                controller: controller.group5609Controller,
                hintText: "lbl_sl_iders".tr.toUpperCase(),
                prefix: Container(
                  margin: getMargin(
                    left: 10,
                    top: 18,
                    right: 6,
                    bottom: 18,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 19,
                    right: 10,
                    bottom: 17,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClose,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 5,
                  top: 29,
                  right: 5,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        199,
                      ),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(
                        16,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        16,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .productSearchModelObj.value.list1ItemList.length,
                    itemBuilder: (context, index) {
                      List1ItemModel model = controller
                          .productSearchModelObj.value.list1ItemList[index];
                      return List1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
