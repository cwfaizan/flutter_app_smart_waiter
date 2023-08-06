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
                height: 92.h,
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
                  decoration: const InputDecoration(
                    hintText: "Type your Name",
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
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
                  decoration: const InputDecoration(
                    hintText: "Type your Number",
                    prefixIcon: Icon(
                      Icons.phone,
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
                child: FilledButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
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
                width: double.maxFinite,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.apple_rounded,
                    color: Colors.black,
                  ),
                  label: const Text(
                    "Sign In with Apple",
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/google.svg"),
                  label: const Text(
                    "Sign In with Google",
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
                    "Have an account? ",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff191A26)),
                  ),
                  InkWell(
                    onTap: () {
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
                height: 40.h,
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
