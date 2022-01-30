import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_market/constant.dart';
import 'package:tech_market/features/categories/view.dart';
import 'package:tech_market/features/home/view.dart';
import 'package:tech_market/features/search/view.dart';
import 'package:tech_market/features/shopping_cart/view.dart';

class NavBarView extends StatefulWidget {
  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int _currentIndex = 0;
  List<Widget> _pageContent = [
    HomeView(),
    SearchView(),
    ShoppingCart(),
    CategoriesView(),
  ];

  List<BottomNavigationBarItem> _navBarItem = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.other_houses_outlined,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.sistrix,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_cart_outlined,
        ),
        label: ''),
    BottomNavigationBarItem(
        icon: Icon(
          FontAwesomeIcons.user,
        ),
        label: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageContent[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 30,
        currentIndex: _currentIndex,
        backgroundColor: kBabyBlueClr,
        selectedItemColor: kBlueClr,
        unselectedItemColor: kDarkClr,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _navBarItem,
      ),
    );
  }
}
