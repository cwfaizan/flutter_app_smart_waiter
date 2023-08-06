import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPhoneNoPasswordPage extends StatelessWidget {
  const ResetPhoneNoPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2F2F2F),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Center(
                    child: Text(
                  "Enter your phone number, we will send a verification code to your number",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffBDBDBD),
                  ),
                )),
                SizedBox(
                  height: 28.h,
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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 17.h),
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
                  height: 400.h,
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
                        "Send Link",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffffffff)),
                      )),
                ),
                // data = jsonData.entoString()
                // print(entryList[0].key);
                // data=jsonData.keys.toString(),
                // Text(jsonData['pin_message'].toString())
              ],
            ),
          ),
        ));
  }
}
