import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_waiter/widgets/home_page_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,
              ),
              Text(
                "Hello Customer 👋",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff2F2F2F),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                "it’s Chill time!",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "What would you like to eat?",
                    prefixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff191A26),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/burger.png",
                        height: 60.h,
                        width: 60,
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/meat.png",
                        height: 60.h,
                        width: 60,
                      ),
                      Text(
                        "Main",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/sandwich.png",
                        height: 60.h,
                        width: 60,
                      ),
                      Text(
                        "Dessert",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/cofee.png",
                        height: 60.h,
                        width: 60,
                      ),
                      Text(
                        "Drinks",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/icecream.png",
                        height: 60.h,
                        width: 60,
                      ),
                      Text(
                        "Appetizer",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Requested Foods",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff191A26),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffFD451C),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Order Now",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff808D9E),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 300.h,
                width: double.maxFinite,
                color: const Color(0xffffffff),
                child: SizedBox(
                  height: 300.h,
                  width: 200.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: const HomePageCard(),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
