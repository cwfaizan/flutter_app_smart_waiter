import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_waiter/widgets/cart_page_content.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  width: 125.w,
                ),
                Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff191A26),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            Center(
              child: Text(
                "Total",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff808D9E),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFD451C),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "21.34",
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff191A26),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 425.h,
              width: double.maxFinite,
              color: const Color(0xffffffff),
              child: SizedBox(
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: const CartPageContent(),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Checkout"),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Add more items",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffFD451C)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
