import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 58.h,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  // ignore: prefer_const_constructors
                  icon: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff191a26),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 58.h,
            ),
            Text(
              "Payment Method",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff191a26),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: const Color(0xffEDF1F8),
                    width: 1.sp,
                  )),
              child: ListTile(
                leading: SvgPicture.asset("assets/svgs/leading.svg"),
                title: Text(
                  "Payment with Cash",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff191A26),
                  ),
                ),
                subtitle: Text(
                  "**** **** **** 8329",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff808D9E),
                  ),
                ),
                trailing: InkWell(
                  onTap: () {},
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Voucher",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff191a26),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Row(
              children: [
                SvgPicture.asset("assets/svgs/star.svg"),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "Add Voucher or Promo Code",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff191A26),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        width: double.maxFinite,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32.h,
                              ),
                              Text(
                                "Select Voucher",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff191a26),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 70.h,
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12.r),
                                        bottomLeft: Radius.circular(12.r),
                                        topRight: Radius.circular(20.r),
                                        bottomRight: Radius.circular(20.r),
                                      ),
                                      // borderRadius: BorderRadius.circular(12.r),
                                      border: Border.all(
                                        color: const Color(0xffE7EAF1),
                                        width: 1.sp,
                                      ),
                                    ),
                                    child: Stack(children: [
                                      Center(
                                          child: SvgPicture.asset(
                                              "assets/svgs/pic.svg")),
                                      Center(
                                          child: Image.asset(
                                              "assets/images/stack.png"))
                                    ]),
                                  ),
                                  Container(
                                    height: 70.h,
                                    width: 265.w,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.r),
                                        topRight: Radius.circular(12.r),
                                        bottomLeft: Radius.circular(20.r),
                                        bottomRight: Radius.circular(12.r),
                                      ),
                                      border: Border.all(
                                        color: const Color(0xffE7EAF1),
                                        width: 1.sp,
                                      ),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        "Get 20% off for 1 week!",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff191A26),
                                        ),
                                      ),
                                      subtitle: Text(
                                        "Valid till 30 May 2022",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff808D9E),
                                        ),
                                      ),
                                      trailing: InkWell(
                                        child: Container(
                                          height: 24.h,
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffFD451C),
                                            borderRadius:
                                                BorderRadius.circular(4.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Use",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                    // showBottomSheet(
                    //   context: context,
                    //   builder: (context) => Container(
                    //     width: double.maxFinite,
                    //     decoration: BoxDecoration(
                    //       color: const Color(0xffffffff),
                    //       borderRadius: BorderRadius.circular(16.r),
                    //     ),
                    //     child: Column(
                    //       children: [
                    //         SizedBox(
                    //           height: 32.h,
                    //         ),
                    //         Text(
                    //           "Select Voucher",
                    //           style: TextStyle(
                    //             fontSize: 18.sp,
                    //             fontWeight: FontWeight.w700,
                    //             color: const Color(0xff191a26),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // );
                  },
                  child: Container(
                    height: 42.h,
                    width: 42.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFEEE8),
                    ),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: const Color(0xffFD451C),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff191A26),
                  ),
                ),
                Text(
                  "\$21.31",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff191A26),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 37.h,
            ),
            SizedBox(
                width: double.maxFinite,
                child: FilledButton(
                    onPressed: () {}, child: const Text("Pay \$21.34"))),
          ],
        ),
      ),
    );
  }
}
