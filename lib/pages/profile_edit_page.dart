import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'favourite_page.dart';
import 'home_screen.dart';
import 'my_cart_page.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  int selectedIndex = 5;

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
                height: 60.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 125.w,
                  ),
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: const Color(0xFF191A26),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Cancel",
                    style: TextStyle(
                      color: const Color(0xFFFD451C),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Image.asset("assets/images/content.png"),
              SizedBox(
                height: 38.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "bebyjovanca",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "+928233287799",
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "**********",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                  ),
                ),
              ),
              SizedBox(
                height: 173.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: FilledButton(
                  onPressed: () {},
                  child: const Text("Save Changes"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
