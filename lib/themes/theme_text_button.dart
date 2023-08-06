import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_colors.dart';

final padding = EdgeInsets.symmetric(vertical: 16.h);
final shape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30.r),
  side: const BorderSide(color: Color(0xffEDF1F8)),
);
final textStyle = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w700,
);

final lightTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    padding: padding,
    shape: shape,
    foregroundColor: lightTextButtonTextColor,
    textStyle: textStyle,
  ),
);
final darkTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    padding: padding,
    shape: shape,
    foregroundColor: darkTextButtonTextColor,
    textStyle: textStyle,
  ),
);
