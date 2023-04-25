import 'controller/login_controller.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/widgets/custom_button.dart';
import 'package:dave_app2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dave_app2/domain/facebookauth/facebook_auth_helper.dart';
import 'package:dave_app2/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: getHorizontalSize(261),
                          margin: getMargin(left: 8, right: 88),
                          child: Text("msg_welcome_back_g".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLatoBold24.copyWith(
                                  letterSpacing: getHorizontalSize(0.72)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group5614Controller,
                          hintText: "msg_enter_your_emai".tr,
                          margin: getMargin(top: 37),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputType: TextInputType.emailAddress),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group5616Controller,
                          hintText: "msg_enter_your_pass".tr,
                          margin: getMargin(top: 15),
                          padding: TextFormFieldPadding.PaddingT15,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 12, top: 12, right: 23, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgEye
                                          : ImageConstant.imgEye))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)),
                          isObscureText: !controller.isShowPassword.value)),
                      CustomButton(
                          height: getVerticalSize(48),
                          text: "lbl_login".tr,
                          margin: getMargin(top: 24),
                          fontStyle: ButtonFontStyle.LatoMedium16WhiteA700),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 7, bottom: 8),
                                    child: SizedBox(
                                        width: getHorizontalSize(112),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.indigo50))),
                                Text("lbl_or_login_with".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtLatoRegular14Gray60001),
                                Padding(
                                    padding: getPadding(top: 7, bottom: 8),
                                    child: SizedBox(
                                        width: getHorizontalSize(111),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.indigo50)))
                              ])),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.gray200,
                                            width: getHorizontalSize(1)),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(168),
                                        padding:
                                            getPadding(top: 15, bottom: 15),
                                        decoration: AppDecoration.white
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFacebook,
                                              height: getSize(26),
                                              width: getSize(26),
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgFacebook();
                                              })
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.gray200,
                                            width: getHorizontalSize(1)),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: getVerticalSize(56),
                                        width: getHorizontalSize(168),
                                        padding:
                                            getPadding(top: 15, bottom: 15),
                                        decoration: AppDecoration.white
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGoogle,
                                              height: getSize(26),
                                              width: getSize(26),
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgGoogle();
                                              })
                                        ])))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 43, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_don_t_have_an".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_account".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_register_now".tr,
                                        style: TextStyle(
                                            color: ColorConstant.indigoA200,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
