import 'package:flutter/material.dart';
import 'package:andi_s_application2/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.lightBlue900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillLightblue700 => BoxDecoration(
        color: ColorConstant.lightBlue700,
      );
  static BoxDecoration get txtFillRed900 => BoxDecoration(
        color: ColorConstant.red900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius txtRoundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6.00,
    ),
  );
}
