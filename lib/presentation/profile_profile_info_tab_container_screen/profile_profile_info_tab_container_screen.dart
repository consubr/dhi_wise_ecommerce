import 'controller/profile_profile_info_tab_container_controller.dart';
import 'package:dave_app2/core/app_export.dart';
import 'package:dave_app2/presentation/profile_address_details_page/profile_address_details_page.dart';
import 'package:dave_app2/presentation/profile_my_orders_page/profile_my_orders_page.dart';
import 'package:dave_app2/presentation/profile_profile_info_page/profile_profile_info_page.dart';
import 'package:dave_app2/presentation/profile_security_page/profile_security_page.dart';
import 'package:dave_app2/widgets/app_bar/appbar_image.dart';
import 'package:dave_app2/widgets/app_bar/appbar_title.dart';
import 'package:dave_app2/widgets/app_bar/custom_app_bar.dart';
import 'package:dave_app2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileProfileInfoTabContainerScreen
    extends GetWidget<ProfileProfileInfoTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(64),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.img25326b4294154be2a5c5f0d7c083e855,
                    margin: getMargin(left: 16, top: 20, bottom: 20),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_shopsie".tr),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 104, top: 32, right: 104, bottom: 32),
                              decoration: AppDecoration.fillGray5001,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(116),
                                        width: getHorizontalSize(100),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgProfileimage100x100,
                                                  height: getSize(100),
                                                  width: getSize(100),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(50)),
                                                  alignment:
                                                      Alignment.topCenter),
                                              CustomIconButton(
                                                  height: 32,
                                                  width: 32,
                                                  margin: getMargin(left: 31),
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgC57ba486ba4c404b89f72e3001eb7290))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Text(
                                            "lbl_archie_copeland"
                                                .tr
                                                .toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoRegular18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            1.08)))),
                                    Padding(
                                        padding: getPadding(top: 13),
                                        child: Text("msg_allentown_new".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoRegular14))
                                  ]))),
                      Container(
                          height: getVerticalSize(30),
                          width: double.maxFinite,
                          margin: getMargin(top: 18),
                          child: TabBar(
                              controller: controller.group5706Controller,
                              labelColor: ColorConstant.indigoA200,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400),
                              unselectedLabelColor: ColorConstant.gray600,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400),
                              indicatorColor: ColorConstant.indigoA200,
                              tabs: [
                                Tab(
                                    child: Text("lbl_profile_info".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_my_orders".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_security".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_address_details".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_log_out".tr,
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(443),
                          child: TabBarView(
                              controller: controller.group5706Controller,
                              children: [
                                ProfileProfileInfoPage(),
                                ProfileMyOrdersPage(),
                                ProfileSecurityPage(),
                                ProfileAddressDetailsPage(),
                                ProfileAddressDetailsPage()
                              ]))
                    ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
