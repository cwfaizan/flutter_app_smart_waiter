import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:like_button/like_button.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
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
                    onPressed: () {
                        Navigator.pop(context);
                    },
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
              SizedBox(
                height: 24.h,
              ),
              Image.asset("assets/images/food.png"),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 54.h,
                    width: 116.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: const Color(0xff000000),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "-",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 50.h,
                          width: 50.w,
                          child: IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: const Color(0xff363944)),
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    height: 48.h,
                    width: 48.w,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: const Color(0xffF7F7FA)),
                      child: const Text("1"),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$ 9.67",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff191a26),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff191a26),
                ),
              ),
              Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consat du veniam consequat coseqtures adipsing content.",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff808D9E),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 267.w,
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text("Add to Cart"),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 56.h,
                    width: 56.w,
                    child: IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: const Color(0xff191A26)),
                      icon: SvgPicture.asset("assets/svgs/bag.svg"),
                      // icon: const Icon(
                      //   Icons.outgoing_mail,
                      //   color: Colors.white,
                      // ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
