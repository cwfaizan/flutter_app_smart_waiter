import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/favourite_card.dart';
import 'home_screen.dart';
import 'my_cart_page.dart';
import 'profile_edit_page.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  int selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Icon(
                  Icons.home,
                  size: 24,
                )),
            // backgroundColor: const Color(0xff503E9D),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const FavouritePage()),
                  );
                },
                child: const Icon(
                  FontAwesomeIcons.heart,
                  size: 24,
                )),
            // backgroundColor: const Color(0xff503E9D),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const FavouritePage()),
                );
              },
              child: SvgPicture.asset("assets/svgs/bag.svg"),
            ),
            // backgroundColor: const Color(0xff503E9D),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CartPage()),
                );
              },
              child: const Icon(Icons.shopping_cart),
            ),
            // backgroundColor: const Color(0xff503E9D),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const ProfileEditPage()),
                );
              },
              child: const Icon(Icons.person),
            ),
            // backgroundColor: const Color(0xff503E9D),
            label: 'profile',
          ),
        ],
        selectedIconTheme: const IconThemeData(
          color: Color(0xff000000),
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        // selectedItemColor: const Color(0xff503E9D),
        iconSize: 24,
        onTap: _onItemTapped,
        // elevation: 5,
      ),
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
                height: 20.h,
              ),
              SizedBox(
                height: 525.h,
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
