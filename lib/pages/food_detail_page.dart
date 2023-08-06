import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const LikeButton(
                      isLiked: false,
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Shrimp Pad Thai Sauce ABC Barbeque",
                  style: TextStyle(
                    color: const Color(0xFF191A26),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Center(
                  child: Text(
                    "By Resto Parmato Bapo",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff808D9E),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 32.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            width: 1.sp,
                            color: const Color(0xffEAEDF3),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Text("4,9"),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Container(
                      height: 32.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            width: 1.sp,
                            color: const Color(0xffEAEDF3),
                          )),
                      child: const Center(child: Text("20 min")),
                    ),
                  ],
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
