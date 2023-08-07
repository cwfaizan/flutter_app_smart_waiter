import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPageContent extends StatelessWidget {
  const CartPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0XFFF4F6FB),
      ),
      child: ListTile(
        leading: Image.asset("assets/images/recipe.png"),
        contentPadding: EdgeInsets.all(10.h),
        title: Text(
          "Grilled Beaf Steak with Sauce...",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff191a26),
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "x1",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff808D9E),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Container(
              height: 25.h,
              width: 25.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFEEE8),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {},
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
            SizedBox(
              width: 5.w,
            ),
            Container(
              height: 25.h,
              width: 25.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFEEE8),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: const Color(0xffFD451C),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        trailing: Text(
          "\$9.67",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff191A26),
          ),
        ),
      ),
    );
  }
}
