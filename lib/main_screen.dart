import 'package:flutter/material.dart';
import 'package:groceryshop/constants.dart';
import 'package:groceryshop/views/screens/cart_screen.dart';
import 'package:groceryshop/views/screens/explore_screen.dart';
import 'package:groceryshop/views/screens/favourite_screen.dart';
import 'package:groceryshop/views/screens/home_screen.dart';
import 'package:groceryshop/views/screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen() {
    return const [
      HomeScreen(),
      ExploreScreen(),
      CartScreen(),
      FavouriteScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add_business_outlined),
        inactiveColorPrimary: Colors.grey,
        activeColorPrimary: primaryColor,
        title: "Shop",
        textStyle: const TextStyle(
          fontFamily: "Gilroy",
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.manage_search_outlined),
        inactiveColorPrimary: Colors.grey,
        activeColorPrimary: primaryColor,
        title: "Explore",
        textStyle: const TextStyle(
          fontFamily: "Gilroy",
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.shopping_cart),
        title: "Cart",
        inactiveColorPrimary: Colors.grey,
        activeColorPrimary: primaryColor,
        textStyle: const TextStyle(
          fontFamily: "Gilroy",
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.favorite_border,
        ),
        title: "Favourite",
        inactiveColorPrimary: Colors.grey,
        activeColorPrimary: primaryColor,
        textStyle: const TextStyle(
          fontFamily: "Gilroy",
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_sharp),
        title: "Account",
        inactiveColorPrimary: Colors.grey,
        activeColorPrimary: primaryColor,
        textStyle: const TextStyle(
          fontFamily: "Gilroy",
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreen(),
      items: _navBarItems(),
      handleAndroidBackButtonPress: true,
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style8,
    );
  }
}
