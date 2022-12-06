import 'package:flutter/material.dart';
import 'package:flutter_imtixon/Coffee.dart';
import 'package:flutter_imtixon/IceCoffee.dart';
import 'package:flutter_imtixon/NewHome.dart';
import 'package:flutter_imtixon/Shop.dart';
import 'package:flutter_imtixon/Snacks.dart';
import 'package:flutter_imtixon/Sweet.dart';
import 'package:flutter_imtixon/favourite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List listOfImage = [
    "assets/Rounded rectangle.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
  ];
  List listOfTitle = [
    "Hot Coffee",
    "Ice Coffee",
    "Snacks",
    "Sweet",
  ];
  List listOfText = [
    "Enjoy your hot coffee with a nice morning",
    "Cold coffee, a feeling of freshness and recharge of the body's activity",
    "A snack that eliminates hunger and gives a sense of activity",
    "You need sweet to relieve the stress of work and study",
  ];
  List listOfPage = [
    NewHome(),
    ShopPage(),
    Favourite(image: 'assets/cofe1.png', title: '', price: '', star: '',),
    Sweet(image: '', title: '', price: '',),
  ];

  int barIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff201520),
      body: listOfPage[barIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff22151F),
        type: BottomNavigationBarType.fixed,

        currentIndex: barIndex,
        onTap: (index) {
          barIndex = index;
          // _pageController.animateToPage(barIndex, duration: Duration(milliseconds: 700), curve: Curves.linear);
          setState(() {});
        },

        items: [
          BottomNavigationBarItem(
              icon: Container(margin: EdgeInsets.only(top: 5),child: Icon(Icons.home, color: Color(0xffEBDCBC), size: 40,)), label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(margin: EdgeInsets.only(top: 5),child: Icon(Icons.shopping_cart, color: Color(0xff615350), size: 40,)), label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(margin: EdgeInsets.only(top: 5),child: Icon(Icons.favorite, color: Color(0xff615350), size: 40,)), label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(margin: EdgeInsets.only(top: 5),child: Icon(Icons.notifications_active, color: Color(0xff615350), size: 40,)), label: '',
          ),
        ],
      ),
    );
  }
}
