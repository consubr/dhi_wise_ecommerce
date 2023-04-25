import '../controller/product_page_controller.dart';
import '../models/sliderrectangleeleven_item_model.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderrectangleelevenItemWidget extends StatelessWidget {
  SliderrectangleelevenItemWidget(this.sliderrectangleelevenItemModelObj);

  SliderrectangleelevenItemModel sliderrectangleelevenItemModelObj;

  var controller = Get.find<ProductPageController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle11,
      height: getVerticalSize(
        289,
      ),
      width: getHorizontalSize(
        390,
      ),
    );
  }
}
