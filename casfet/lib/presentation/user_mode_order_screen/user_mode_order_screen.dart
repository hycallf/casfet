import '../user_mode_order_screen/widgets/listrectanglesixtyseven_item_widget.dart';
import 'controller/user_mode_order_controller.dart';
import 'models/listrectanglesixtyseven_item_model.dart';
import 'package:andi_s_application2/core/app_export.dart';
import 'package:andi_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:andi_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class UserModeOrderScreen extends GetWidget<UserModeOrderController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(
                      623.00,
                    ),
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomAppBar(
                          height: getVerticalSize(
                            93.00,
                          ),
                          centerTitle: true,
                          title: Container(
                            decoration: AppDecoration.fillLightblue700,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AppbarImage(
                                  height: getSize(
                                    38.00,
                                  ),
                                  width: getSize(
                                    38.00,
                                  ),
                                  imagePath: ImageConstant.imgImage2,
                                  margin: getMargin(
                                    left: 20,
                                    top: 24,
                                    bottom: 31,
                                  ),
                                ),
                                AppbarImage(
                                  height: getVerticalSize(
                                    37.00,
                                  ),
                                  width: getHorizontalSize(
                                    66.00,
                                  ),
                                  imagePath: ImageConstant.imgCft1,
                                  margin: getMargin(
                                    left: 225,
                                    top: 28,
                                    right: 11,
                                    bottom: 28,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          styleType: Style.bgFillLightblue700,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: getMargin(
                              left: 13,
                              top: 10,
                              right: 13,
                            ),
                            decoration:
                                AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 19,
                                    top: 22,
                                    right: 19,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          right: 10,
                                        ),
                                        child: Text(
                                          "lbl_total_fee".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRomanBold20,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 14,
                                            right: 7,
                                          ),
                                          child: Text(
                                            "msg_rp_9_999_999_999".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRomanBold32,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 34,
                                            top: 2,
                                            right: 34,
                                          ),
                                          child: Text(
                                            "msg_you_ordered_quite".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRomanLight11,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 5,
                                            top: 53,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: getSize(
                                                  77.00,
                                                ),
                                                width: getSize(
                                                  77.00,
                                                ),
                                                margin: getMargin(
                                                  top: 1,
                                                  bottom: 25,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.bluegray100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      10.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "msg_food_drink_name".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanBold16,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 1,
                                                      top: 3,
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "lbl_id_0000000000".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular5,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 1,
                                                      top: 7,
                                                      right: 10,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            bottom: 1,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage9,
                                                            height: getSize(
                                                              13.00,
                                                            ),
                                                            width: getSize(
                                                              13.00,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 4,
                                                            top: 1,
                                                          ),
                                                          child: Text(
                                                            "lbl_price".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanRegular10,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 7,
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "msg_rp_9_999_999_999".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular15,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                      margin: getMargin(
                                                        left: 10,
                                                        top: 7,
                                                      ),
                                                      padding: getPadding(
                                                        left: 10,
                                                        top: 2,
                                                        right: 10,
                                                        bottom: 2,
                                                      ),
                                                      decoration: AppDecoration
                                                          .txtFillRed900
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder6,
                                                      ),
                                                      child: Text(
                                                        "lbl_remove".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRomanBold11,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      275.00,
                                    ),
                                    margin: getMargin(
                                      left: 19,
                                      top: 19,
                                      right: 19,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 23,
                                    right: 24,
                                    bottom: 14,
                                  ),
                                  child: Obx(
                                    () => ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            275.00,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                          ),
                                        );
                                      },
                                      itemCount: controller
                                          .userModeOrderModelObj
                                          .value
                                          .listrectanglesixtysevenItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListrectanglesixtysevenItemModel model =
                                            controller
                                                    .userModeOrderModelObj
                                                    .value
                                                    .listrectanglesixtysevenItemList[
                                                index];
                                        return ListrectanglesixtysevenItemWidget(
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
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 15,
                    top: 36,
                    right: 14,
                    bottom: 5,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 11,
                    right: 38,
                    bottom: 11,
                  ),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: ColorConstant.lightBlue500,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        10.00,
                      ),
                    ),
                  ),
                  child: Text(
                    "lbl_finalize_order".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        36,
                      ),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
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
