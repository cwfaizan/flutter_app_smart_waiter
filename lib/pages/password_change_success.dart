import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChangePasswordSuccessPage extends StatelessWidget {
  const ChangePasswordSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors, deprecated_member_use
              icon: Icon(FontAwesomeIcons.remove),
            ),
            SizedBox(
              height: 43.h,
            ),
            Center(child: Image.asset("assets/images/password.png")),
            Center(
              child: Text(
                "Password Changed",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff191a26),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Center(
              child: Text(
                "Password changed succesfully, You can login \nagain with new password",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff808D9E),
                ),
              ),
            ),
            SizedBox(
              height: 232.h,
            ),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Sign In Now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
