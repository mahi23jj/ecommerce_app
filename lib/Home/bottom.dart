//import 'dart:html';

//import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:ecommerce/Home/main.dart';
import 'package:ecommerce/Home/search.dart';
import 'package:ecommerce/eden/cart2.dart';
import 'package:ecommerce/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class AnimatedBottomBar extends StatefulWidget {
  const AnimatedBottomBar({super.key});

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  final Screens = [TelegramProfile(), const searching(), const Profile(),const cartPage_2()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Screens[index],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: GNav(
              selectedIndex: index,
              backgroundColor: Color.fromARGB(255, 248, 245, 245),
              color: Color.fromARGB(255, 79, 51, 241),
              activeColor: Color.fromARGB(255, 79, 51, 241),
              tabBackgroundColor: Color.fromARGB(199, 203, 202, 202),
              onTabChange: (index) => setState(() => this.index = index),
              padding: EdgeInsets.all(16),
              gap: 8,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                ),
                
              ]),
        ),
      ),
    );
  }
}
