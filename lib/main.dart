import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:smart_waiter/themes/theme_mode.dart';

import 'pages/food_detail_page.dart';
import 'pages/password_change_success.dart';
import 'pages/payment_page.dart';
import 'pages/profile_edit_page.dart';

// import 'pages/transaction_page_sheet.dart';

// import 'pages/setting_page.dart';
// import 'widgets/transcation_history_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: lightThemeData,
        darkTheme: darkThemeData,
        home: const FoodDetailPage(),
      ),
      designSize: const Size(375, 812),
    );
  }
}
