import 'package:ecommerce/helper/config.dart';
import 'package:ecommerce/order/cart_screen.dart';
import 'package:ecommerce/home/main_screen.dart';
import 'package:ecommerce/product/categories_screen.dart';
import 'package:ecommerce/user%20profile/notifictions_screen.dart';
import 'package:ecommerce/user%20profile/user_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/helpers/enums.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  dynamic selected = 0;
  var heart = false;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  List<Widget> screens = [
    MainScreen(title: 'title'),
    CategoriesScreen(),
    NotificationsScreen(),
    CartScreen(title: 'title'),
    UserProfileScreen(title: 'title'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: StylishBottomBar(
          option: AnimatedBarOptions(
            // iconSize: 32,
            barAnimation: BarAnimation.fade,
            iconStyle: IconStyle.animated,
            // opacity: 0.3,
          ),
          items: [
            BottomBarItem(
              icon: const Icon(Icons.home),
              selectedIcon: const Icon(Icons.home),
              selectedColor: Primarycolor,
              showBadge: false,
              title: const Text('Home'),
            ),
            BottomBarItem(
              icon: const Icon(Icons.manage_search_rounded),
              selectedIcon: const Icon(Icons.manage_search_rounded),
              selectedColor: Primarycolor,
              showBadge: false,
              // unSelectedColor: Colors.purple,
              // backgroundColor: Colors.orange,
              title: const Text('Categories'),
            ),
            BottomBarItem(
              icon: const Icon(CupertinoIcons.bell),
              selectedIcon: const Icon(CupertinoIcons.bell),
              selectedColor: Primarycolor,
              showBadge: false,
              // unSelectedColor: Colors.purple,
              // backgroundColor: Colors.orange,
              title: const Text('Notifications'),
            ),
            BottomBarItem(
                icon: const Icon(
                  CupertinoIcons.cart,
                ),
                selectedIcon: const Icon(
                  CupertinoIcons.cart,
                ),
                showBadge: false,
                selectedColor: Primarycolor,
                title: const Text('Cart')),
            BottomBarItem(
                icon: const Icon(
                  Icons.person_outline,
                ),
                selectedIcon: const Icon(
                  Icons.person,
                ),
                showBadge: false,
                selectedColor: Primarycolor,
                title: const Text('Profile')),
          ],
          hasNotch: true,
          fabLocation: StylishBarFabLocation.center,
          currentIndex: selected ?? 0,
          onTap: (index) {
            // controller.jumpToPage(index);
            setState(() {
              selected = index;
            });
          },
        ),
        body: screens[selected]
    );
  }
}