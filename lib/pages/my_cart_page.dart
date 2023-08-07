import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_waiter/pages/payment_page.dart';
import 'package:smart_waiter/widgets/cart_page_content.dart';

import 'favourite_page.dart';
import 'home_screen.dart';
import 'profile_edit_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int selectedIndex = 3;

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
              child: SvgPicture.asset("assets/svgs/bags.svg"),
            ),
            // backgroundColor: const Color(0xff503E9D),
            label: 'Main',
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
                  onTap: () {  Navigator.pop(context);},
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
              height: 370.h,
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
              height: 25.h,
            ),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const PaymentPage()),
                  );
                },
                child: const Text("Checkout"),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
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
