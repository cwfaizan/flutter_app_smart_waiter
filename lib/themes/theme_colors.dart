import 'package:flutter/material.dart';

// light colors
const lightPrimaryColor = Color(0xffFD451C);
const lightBackgroundColor = Color(0xffFFFFFF);
const lightTextFieldBorderColor = Color(0xffFD451C);
const lightTextFieldEnabledBorderColor = Color(0xffDFE1E8);
const lightTextFieldFillColor = Color(0xffFFFFFF);
const lightTextFieldHintAndIconColor = Color(0xff7E8CA0);
const lightFilledButtonTextColor = Color(0xffffffff);
const lightTextButtonTextColor = Color(0xff191A26);

// dark colors
const darkPrimaryColor = Color(0xffffffff);
const darkBackgroundColor = Color(0xff000000);
const darkTextFieldBorderColor = Color(0xffFD451C);
const darkTextFieldEnabledBorderColor = Color(0xffDFE1E8);
const darkTextFieldFillColor = Color(0xffFFFFFF);
const darkTextFieldHintAndIconColor = Color(0xff7E8CA0);
const darkFilledButtonTextColor = Color(0xffffffff);
const darkTextButtonTextColor = Color(0xff191A26);
final lightColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: lightPrimaryColor,
  primary: lightPrimaryColor,
  background: lightBackgroundColor,
);

final darkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: darkPrimaryColor,
  primary: darkPrimaryColor,
  background: darkBackgroundColor,
);
