import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130.w,
                  ),
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: const Color(0xFF191A26),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Cancel",
                    style: TextStyle(
                      color: const Color(0xFFFD451C),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 46.h,
              ),
              Image.asset("assets")
            ],
          ),
        ),
      ),
    );
  }
}
