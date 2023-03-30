import 'package:flutter/material.dart';
import 'app_export.dart';
import 'app_routes.dart';
import 'color_constant.dart';
import 'date_time_utils.dart';
import 'image_constant.dart';
import 'order.dart';
import 'size_utils.dart';
import 'app_decoration.dart';
import 'app_style.dart';
import 'custom_image_view.dart';
import 'custom_text_form_field.dart';
class AppDecoration {
  static BoxDecoration get fillLightgreen100 => BoxDecoration(
        color: ColorConstant.lightGreen100,
      );
  static BoxDecoration get outlineBlack90014 => BoxDecoration(
        color: ColorConstant.black900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              8,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900141 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              8,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtFillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get fillGreen900 => BoxDecoration(
        color: ColorConstant.green900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtRoundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
