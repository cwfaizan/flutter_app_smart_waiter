import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

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
              // ignore: prefer_const_constructors
              icon: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Create New Password",
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff191a26),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "Your password must be different from \nprevious used password",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff808D9E),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: double.maxFinite,
              child: TextFormField(
                // obscureText: true,
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  hintText: "Type your password",
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              width: double.maxFinite,
              child: TextFormField(
                // obscureText: true,
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  hintText: "Confirm your password",
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 353.h,
            ),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Reset Password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
