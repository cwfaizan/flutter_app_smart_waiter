import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.w,
        height: 290.h,
        // padding: REdgeInsets.all(16),
        decoration: ShapeDecoration(
          color: const Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
            side: const BorderSide(width: 0, color:  Color.fromARGB(40, 0, 0, 0)),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.assets(imageUrl),
            Image.asset(
              "assets/images/bir.png",
              height: 200.h,
              width: 200.w,
            ),
            SizedBox(
              height: 13.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                "Spaghetti with Spicy\n Mixed Seafood",
                style: TextStyle(
                  color: const Color(0xFF191A26),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            // const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' \$8.00',
                    style: TextStyle(
                      color: const Color(0xFF191A26),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  const LikeButton(
                    isLiked: true,
                  )
                  // SvgPicture.asset(
                  //   isFavourite ? "assets/svgs/heart.svg" : "assets/svgs/heart.svg",
                  //   height: 20.h,
                  //   width: 20.w,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
