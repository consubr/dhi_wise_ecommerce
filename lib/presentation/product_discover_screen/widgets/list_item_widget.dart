import '../controller/product_discover_controller.dart';
import '../models/list_item_model.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

  var controller = Get.find<ProductDiscoverController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage236x1713,
          height: getVerticalSize(
            236,
          ),
          width: getHorizontalSize(
            171,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              8,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            158,
          ),
          margin: getMargin(
            top: 10,
          ),
          child: Obx(
            () => Text(
              listItemModelObj.nameTxt.value,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtLatoRegular13Gray90001.copyWith(
                letterSpacing: getHorizontalSize(
                  0.39,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 10,
          ),
          child: Obx(
            () => Text(
              listItemModelObj.priceTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtLatoSemiBold13,
            ),
          ),
        ),
      ],
    );
  }
}
