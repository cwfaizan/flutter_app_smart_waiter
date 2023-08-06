import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_colors.dart';

final lightInputDecorationTheme = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.r),
    borderSide: BorderSide(color: lightTextFieldBorderColor, width: 1.w),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.r),
    borderSide: BorderSide(color: lightTextFieldEnabledBorderColor, width: 1.w),
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 17.h),
  prefixIconColor: lightTextFieldHintAndIconColor,
  suffixIconColor: lightTextFieldHintAndIconColor,
  filled: true,
  fillColor: lightTextFieldFillColor,
  hintStyle: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: lightTextFieldHintAndIconColor,
  ),
);

final darkInputDecorationTheme = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.r),
    borderSide: BorderSide(color: darkTextFieldBorderColor, width: 1.w),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.r),
    borderSide: BorderSide(color: darkTextFieldEnabledBorderColor, width: 1.w),
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 17.h),
  filled: true,
  fillColor: darkTextFieldFillColor,
  prefixIconColor: darkTextFieldHintAndIconColor,
  suffixIconColor: darkTextFieldHintAndIconColor,
  hintStyle: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: darkTextFieldHintAndIconColor,
  ),
);
