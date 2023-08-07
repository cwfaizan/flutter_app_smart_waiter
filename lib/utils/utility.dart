import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final itemHSpace16 = SizedBox(height: 16.h);

class Utility {
  static void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void updateMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}
