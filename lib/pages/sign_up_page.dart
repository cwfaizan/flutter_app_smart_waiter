import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_waiter/pages/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                "Sign Up",
                style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff191A26)),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Please fill out the form below!",
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
                    hintText: "Type your Name",
                    prefixIcon: const Icon(
                      Icons.person_2_outlined,
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
                      "Sign Up",
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
                    "Or sign up with",
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
                    "Have an account?",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff191A26)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
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
