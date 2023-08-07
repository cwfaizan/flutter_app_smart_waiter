import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_waiter/pages/login_page.dart';
import 'package:smart_waiter/utils/network_client.dart';
import 'package:smart_waiter/utils/utility.dart';

import 'otp_verifiaction_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameControl = TextEditingController(text: 'Faizan Abbas');
  final contactControl = TextEditingController(text: '923331234567');
  final passwordControl = TextEditingController(text: '12345678');
  String? contactNo;
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff191A26),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Please fill out the form below!",
                    style: TextStyle(
                      fontSize: 16.sp,
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
                      controller: nameControl,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Type your Name",
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                        ),
                      ),
                    ),
                  ),
                  itemHSpace16,
                  SizedBox(
                    width: double.maxFinite,
                    child: TextFormField(
                      controller: contactControl,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: "Type contact no",
                        prefixIcon: Icon(
                          Icons.phone,
                        ),
                      ),
                    ),
                  ),
                  if (contactNo != null)
                    Text(
                      contactNo!,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffFD451C),
                      ),
                    ),
                  itemHSpace16,
                  SizedBox(
                    width: double.maxFinite,
                    child: TextFormField(
                      controller: passwordControl,
                      obscureText: !passwordVisible,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Type password",
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        suffixIcon: InkWell(
                          onTap: () => setState(() {
                            passwordVisible = !passwordVisible;
                          }),
                          child: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemHSpace16,
                  SizedBox(
                    width: double.maxFinite,
                    child: FilledButton(
                        onPressed: () {
                          _checkAccount(context);
                        },
                        child: const Text(
                          "Sign Up",
                        )),
                  ),
                  /*SizedBox(
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
                          color: const Color(0xff808D9E),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: TextButton.icon(
                      onPressed: () {
                        Utility.updateMessage(context, 'Coming soon');
                      },
                      icon: const Icon(
                        Icons.apple_rounded,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Sign in with Apple",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: TextButton.icon(
                      onPressed: () {
                        Utility.updateMessage(context, 'Coming soon');
                      },
                      icon: SvgPicture.asset("assets/svgs/google.svg"),
                      label: const Text(
                        "Sign in with Google",
                      ),
                    ),
                  ),*/
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
                          Navigator.of(context).pushReplacement(
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
                        " and ",
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _checkAccount(BuildContext context) async {
    if (contactControl.text.isEmpty) {
      setState(() {
        contactNo = 'contact no required';
      });
      return;
    } else if (!contactControl.text.startsWith('923') ||
        contactControl.text.length != 12) {
      setState(() {
        contactNo = 'contact no start with 923.. and contains 12 digits';
      });
      return;
    }
    contactNo = null;

    final res = await NetworkClient().post(
      'api/check-account',
      bodyParameters: {
        'contact_no': contactControl.text,
        'account_type': 2,
      },
    );
    Map<String, dynamic> mp = json.decode(res.toString());
    if (res.statusCode == 200) {
      Map<String, dynamic> data = mp['data'];
      // add form data
      data['name'] = nameControl.text;
      data['password'] = passwordControl.text;
      data['account_type'] = 2;
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => OtpVerificationPage(data: data),
      ));
    } else if (res.statusCode == 422) {
      Map<String, dynamic> errors = mp['errors'];
      if (errors.containsKey('contact_no')) {
        contactNo = errors['contact_no'][0];
      }
      setState(() {});
    }
  }
}
