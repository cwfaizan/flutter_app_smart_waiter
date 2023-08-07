import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 53.w,
      height: 53.h,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(30),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color(0xffFD451C)),
      borderRadius: BorderRadius.circular(30),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
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
                "Verification Code",
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
                "Please enter the verification code that we have sent to your phone number",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffBDBDBD),
                ),
              )),

              SizedBox(
                height: 44.h,
              ),
              Center(
                child: Pinput(
                  length: 4,
                  // controller: pinPutController,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  // validator: (s) {
                  //   return s == '2222' ? null : 'Pin is incorrect';
                  // },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  // onCompleted: (pin) => submitForm(context),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFD451C)),
                  ),
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: FilledButton(
                  onPressed: () {},
                  child: const Text(
                    "Continue",
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
      ),
    );
  }
}
