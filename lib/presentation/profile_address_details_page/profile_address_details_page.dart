import '../profile_address_details_page/widgets/listhomeaddress_item_widget.dart';
import 'controller/profile_address_details_controller.dart';
import 'models/listhomeaddress_item_model.dart';
import 'models/profile_address_details_model.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/widgets/custom_button.dart';
import 'package:dave_app2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsPage extends StatelessWidget {
  ProfileAddressDetailsController controller = Get.put(
      ProfileAddressDetailsController(ProfileAddressDetailsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 36,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_address_1".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoMedium13Gray90002,
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.group5627Controller,
                        hintText: "lbl_enter_address".tr,
                        margin: getMargin(
                          top: 7,
                        ),
                        padding: TextFormFieldPadding.PaddingT14,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_address_2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.group5627OneController,
                        hintText: "lbl_enter_address".tr,
                        margin: getMargin(
                          top: 7,
                        ),
                        padding: TextFormFieldPadding.PaddingT14,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "lbl_city".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.group5627TwoController,
                        hintText: "lbl_enter_your_city".tr,
                        margin: getMargin(
                          top: 6,
                        ),
                        padding: TextFormFieldPadding.PaddingT14,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_postal_code".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.group5627ThreeController,
                        hintText: "msg_enter_postal_co".tr,
                        margin: getMargin(
                          top: 7,
                        ),
                        padding: TextFormFieldPadding.PaddingT14,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_phone_number".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.group5627FourController,
                        hintText: "msg_enter_phone_num".tr,
                        margin: getMargin(
                          top: 7,
                        ),
                        padding: TextFormFieldPadding.PaddingT14,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.phone,
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          48,
                        ),
                        text: "msg_add_another_add".tr.toUpperCase(),
                        margin: getMargin(
                          top: 24,
                        ),
                        variant: ButtonVariant.OutlineIndigoA200,
                        fontStyle: ButtonFontStyle.LatoSemiBold13IndigoA200,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "msg_current_address".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoSemiBold13Gray90001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  24,
                                ),
                              );
                            },
                            itemCount: controller.profileAddressDetailsModelObj
                                .value.listhomeaddressItemList.length,
                            itemBuilder: (context, index) {
                              ListhomeaddressItemModel model = controller
                                  .profileAddressDetailsModelObj
                                  .value
                                  .listhomeaddressItemList[index];
                              return ListhomeaddressItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
