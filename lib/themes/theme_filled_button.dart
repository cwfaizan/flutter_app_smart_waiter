import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_colors.dart';

final padding = EdgeInsets.symmetric(vertical: 19.h);
final shape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30.r),
);

final lightFilledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    padding: padding,
    shape: shape,
    textStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: lightFilledButtonTextColor),
  ),
);

final darkFilledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    padding: padding,
    shape: shape,
    textStyle: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      color: darkFilledButtonTextColor,
    ),
  ),
);
