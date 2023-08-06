import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController pageController = PageController();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              OnboardingContent(path: "assets/images/a.png"),
              OnboardingContent(path: "assets/images/b.png"),
              OnboardingContent(path: "assets/images/c.png"),
            ],
          ),
          Positioned(
            top: 597.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: SlideEffect(
                      dotColor: const Color(0xffEDF1F8),
                      activeDotColor: const Color(0xffFD451C),
                      dotHeight: 12.h,
                      dotWidth: 12.w),
                ),
              ],
            ),
          ),
          Positioned(
            // right: 20.w,
            // left: 20.w,
            top: 656.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SizedBox(
                width: 354.w,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).pushReplacement(
                        //   MaterialPageRoute(
                        //     builder: (context) => const HomeScreen(),
                        //   ),
                        // );
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff808D9E)),
                      ),
                    ),
                    const Spacer(),
                    // IconButton(
                    //   onPressed: () {
                    //     pageController.animateToPage(
                    //       pageController.page!.toInt() - 1,
                    //       duration: const Duration(milliseconds: 400),
                    //       curve: Curves.easeIn,
                    //     );
                    //   },
                    //   icon: const Icon(Icons.navigate_before),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: SizedBox(
                        width: 106.w,
                        child: FilledButton(
                            onPressed: () {
                              if (pageController.page!.toInt() > 1) {
                                // Navigator.of(context).pushReplacement(
                                //   MaterialPageRoute(
                                //     builder: (context) => const HomeScreen(),
                                //   ),
                                // );
                              } else {
                                pageController.animateToPage(
                                  pageController.page!.toInt() + 1,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: const Text(
                              "Next",
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
