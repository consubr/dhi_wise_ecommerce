import 'controller/profile_profile_info_controller.dart';
import 'models/profile_profile_info_model.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/widgets/custom_button.dart';
import 'package:dave_app2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileProfileInfoPage extends StatelessWidget {
  ProfileProfileInfoController controller =
      Get.put(ProfileProfileInfoController(ProfileProfileInfoModel().obs));

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
                        "lbl_first_name".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoMedium13Gray90002,
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.firstnameOneController,
                        hintText: "lbl_archie".tr,
                        margin: getMargin(
                          top: 15,
                        ),
                        fontStyle:
                            TextFormFieldFontStyle.LatoRegular13Gray90002,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_last_name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.lastnameOneController,
                        hintText: "lbl_copeland".tr,
                        margin: getMargin(
                          top: 15,
                        ),
                        fontStyle:
                            TextFormFieldFontStyle.LatoRegular13Gray90002,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_email_address".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.emailaddressController,
                        hintText: "msg_archiecopeland_gmail_com".tr,
                        margin: getMargin(
                          top: 15,
                        ),
                        fontStyle:
                            TextFormFieldFontStyle.LatoRegular13Gray90002,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          48,
                        ),
                        text: "lbl_save_edits".tr.toUpperCase(),
                        margin: getMargin(
                          top: 31,
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
