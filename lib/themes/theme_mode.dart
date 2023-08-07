import 'package:flutter/material.dart';

import 'theme_colors.dart';
import 'theme_filled_button.dart';
import 'theme_input_decoration.dart';
import 'theme_text_button.dart';
import 'typography.dart';

// Light Theme
final lightThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  textTheme: lightTextTheme,
  inputDecorationTheme: lightInputDecorationTheme,
  filledButtonTheme: lightFilledButtonTheme,
  textButtonTheme: lightTextButtonTheme,
);

// Dark Theme
final darkThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  textTheme: darkTextTheme,
  inputDecorationTheme: darkInputDecorationTheme,
  filledButtonTheme: darkFilledButtonTheme,
    textButtonTheme: darkTextButtonTheme,
);
