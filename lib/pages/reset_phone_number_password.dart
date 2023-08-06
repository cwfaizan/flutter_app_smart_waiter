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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
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
                    decoration: const InputDecoration(
                      hintText: "Type your Number",
                      prefixIcon: Icon(
                        Icons.phone,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 400.h,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text(
                      "Send Link",
                    ),
                  ),
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
