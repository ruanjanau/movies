import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  TextStyle get light => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: ScreenUtil().setWidth(12),
      );

  TextStyle get regular => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: ScreenUtil().setWidth(10),
      );

  TextStyle get medium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: ScreenUtil().setWidth(10),
      );

  TextStyle get semiBold => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: ScreenUtil().setWidth(12),
      );

  TextStyle get semiBold16 => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: ScreenUtil().setWidth(16),
      );

  TextStyle get bold => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: ScreenUtil().setWidth(16),
      );
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
