import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48.h,
              ),
              Text(
                "Hi! Welcome back",
                style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff191A26)),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Sign In to your account",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff808D9E)),
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: TextFormField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                        borderSide: const BorderSide(
                            color: Color(0xffFD451C), width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                        borderSide: BorderSide(
                            color: const Color(0xffDFE1E8), width: 1.w)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 22.w, vertical: 17.h),
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    hintText: "Type your Number",
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Color(0xff7E8CA0),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff7E8CA0),
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.r),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                        borderSide: BorderSide(
                            color: const Color(0xffDFE1E8), width: 1.w)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 22.w, vertical: 17.h),
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    hintText: "Type your password",
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff7E8CA0),
                    ),
                    // suffixIcon: SvgPicture.asset(
                    //   "assets/svgs/eye.svg",
                    //   height: 12.h,
                    //   width: 12.w,
                    // ),
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff7E8CA0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 215.w),
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (context) => const ForgotPassward()),
                    // );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFD451C),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 56.h,
                width: double.maxFinite,
                child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xffFD451C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffffffff)),
                    )),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    "Or login with",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff808D9E)),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  // SizedBox(
                  //   height: 16.h,
                  // ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: 56.h,
                width: double.maxFinite,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Color(0xff191A26)),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.apple_rounded,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Sign In with Apple",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff191A26)),
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              SizedBox(
                height: 56.h,
                width: double.maxFinite,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Color(0xff191A26)),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/google.svg"),
                  label: Text(
                    "Sign In with Google",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff191A26)),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff191A26)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFD451C),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 63.h,
              ),
              Center(
                child: Text(
                  "By using our services you are agreeing to our",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff191A26)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Terms",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffFD451C),
                    ),
                  ),
                  Text(
                    "and",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff191A26)),
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffFD451C),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Terms and Privacy Policy