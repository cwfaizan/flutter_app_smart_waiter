import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_waiter/pages/food_detail_page.dart';
import 'package:smart_waiter/pages/login_page.dart';
import 'package:smart_waiter/pages/on_boarding_screen.dart';
import 'package:smart_waiter/pages/reset_phone_number_password.dart';
import 'package:smart_waiter/pages/sign_up_page.dart';
import 'package:smart_waiter/widgets/home_page_card.dart';

import 'pages/home_screen.dart';
import 'pages/verifiaction_code_page.dart';

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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFD451C)),
          useMaterial3: true,
        ),
        // theme: lightThemeData,
        // darkTheme: darkThemeData,
        home: LoginPage(),
      ),
      designSize: const Size(375, 812),
    );
  }
}
