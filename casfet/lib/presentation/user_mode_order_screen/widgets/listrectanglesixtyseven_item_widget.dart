import '../controller/user_mode_order_controller.dart';
import '../models/listrectanglesixtyseven_item_model.dart';
import 'package:andi_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListrectanglesixtysevenItemWidget extends StatelessWidget {
  ListrectanglesixtysevenItemWidget(this.listrectanglesixtysevenItemModelObj);

  ListrectanglesixtysevenItemModel listrectanglesixtysevenItemModelObj;

  var controller = Get.find<UserModeOrderController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 17.48999,
        bottom: 17.48999,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              color: ColorConstant.bluegray100,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 33,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "msg_food_drink_name".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanBold16,
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
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular5,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 7,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 1,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage9,
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
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular10,
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
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular15,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
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
                    decoration: AppDecoration.txtFillRed900.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder6,
                    ),
                    child: Text(
                      "lbl_remove".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanBold11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
