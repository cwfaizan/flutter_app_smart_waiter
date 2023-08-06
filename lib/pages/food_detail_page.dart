import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfFF99145),
      body: Column(
        children: [
          Container(
            height: 706.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: const Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
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
                    height: 24.h,
                  ),
                  Text(
                    "Grilled Beef Steak with \nSauce ABC",
                    style: TextStyle(
                      color: const Color(0xFF191A26),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Made by Master Shef",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff808D9E),
                    ),
                  ),
                  Row(
                    children: [
                      const Column(children:  [

                      ],),
                      Image.asset(
                        "assets/images/i.png",
                        height: 300.h,
                        width: 320.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
