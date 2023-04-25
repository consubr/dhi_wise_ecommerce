import 'controller/profile_security_controller.dart';
import 'models/profile_security_model.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/widgets/custom_button.dart';
import 'package:dave_app2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileSecurityPage extends StatelessWidget {
  ProfileSecurityController controller =
      Get.put(ProfileSecurityController(ProfileSecurityModel().obs));

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
                    top: 94,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_change_password".tr.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoSemiBold13Gray90001,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "msg_current_passwor".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.group5627Controller,
                        hintText: "lbl_password".tr,
                        margin: getMargin(
                          top: 14,
                        ),
                        textInputType: TextInputType.visiblePassword,
                        isObscureText: true,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "lbl_new_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoMedium13Gray90002,
                        ),
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.group5627OneController,
                        hintText: "lbl_password".tr,
                        margin: getMargin(
                          top: 14,
                        ),
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        isObscureText: true,
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          48,
                        ),
                        text: "lbl_update_password".tr.toUpperCase(),
                        margin: getMargin(
                          top: 24,
                        ),
                        variant: ButtonVariant.FillGray300,
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
