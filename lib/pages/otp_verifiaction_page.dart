import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_waiter/pages/login_page.dart';
import 'package:smart_waiter/utils/utility.dart';

import '../utils/network_client.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  String? pinMessage;

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
                "Please enter the verification ${widget.data['pin_message']}",
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
                  onCompleted: (pin) {
                    _verifyPin(context, pin);
                  },
                ),
              ),
              if (pinMessage != null)
                SizedBox(
                  height: 20.h,
                ),
              if (pinMessage != null)
                Center(
                  child: Text(
                    pinMessage!,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffFD451C),
                    ),
                  ),
                ),
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffFD451C),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
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

  Future<void> _verifyPin(BuildContext context, String pin) async {
    pinMessage = null;
    final res = await NetworkClient().get(
      'api/verify-pin',
      queryParameters: {
        'item': widget.data['item'],
        'pin_type': widget.data['pin_type'],
        'pin': pin,
      },
    );
    if (res.statusCode == 200) {
      final createRes = await NetworkClient().post(
        'api/signup',
        bodyParameters: {
          'name': widget.data['name'],
          'contact_no': widget.data['item'],
          'password': widget.data['password'],
          'password_confirmation': widget.data['password'],
          'account_type': widget.data['account_type'],
        },
      );
      if (createRes.statusCode == 201) {
        // ignore: use_build_context_synchronously
        Utility.updateMessage(context, 'Account successfully created');
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
            result: (Route<dynamic> route) => false);
      }
    } else if (res.statusCode == 422) {
      Map<String, dynamic> mp = json.decode(res.toString());
      Map<String, dynamic> errors = mp['errors'];
      if (errors.containsKey('pin_message')) {
        pinMessage = errors['pin_message'][0];
      }
      setState(() {});
    }
  }
}
