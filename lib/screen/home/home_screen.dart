import 'package:b2b_application/screen/home/home1_screen.dart.dart';
import 'package:b2b_application/screen/home/wighets/slider_images.dart';
import 'package:b2b_application/utils/color.dart';
import 'package:b2b_application/utils/contrent.dart';
import 'package:b2b_application/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
    int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your pages/widgets here
    // Example:
   Home1Screen(),
    Text(""),
   Text(""),
 Text(""),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _pages[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: kprimaryColor,
            backgroundColor: kwhite,
            unselectedItemColor: const Color.fromARGB(255, 162, 159, 159),
              type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Icon(
                    Icons.home,
                    size: 30,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Image.asset(
                 "assets/images/orders.png",
                    height: 25,
                    color: _currentIndex == 1 ? kblack : Colors.grey,
                  ),
                ),
                label: 'product',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Image.asset(
                  "assets/images/cart.png",
                    height: 25,
                    color: _currentIndex == 2 ? kblack : Colors.grey,
                  ),
                ),
                label: 'Cart',
              ), 
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Image.asset(
                    "assets/images/account.png",
                    height: 25,
                    color: _currentIndex == 3 ? kblack :  Colors.grey,
                  ),
                ),
                label: 'Account',
              ), 
               BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Image.asset(
                    "assets/images/location.png",
                    height: 25,
                    color: _currentIndex == 3 ? kblack :  Colors.grey,
                  ),
                ),
                label: 'Account',
              ), 
            ],
          ),
    );
  }
}