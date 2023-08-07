import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/favourite_card.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 68.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favourite",
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff191a26),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_rounded),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 48.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color(0xffF6F7FA),
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 43.h,
                      width: 166.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text(
                          "Favourite",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff242B42),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 46.w,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "My Order",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff242B42),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 630.h,
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 11.w,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 11.w / 16.h,
                    children: List.generate(6, (index) {
                      return SizedBox(
                        height: 250.h,
                        width: 160.w,
                        child: const FavouriteCard(),
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
