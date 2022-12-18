import 'package:flutter/material.dart';
import 'package:my_firstapp/bottom_screen/about.dart';
import 'package:my_firstapp/bottom_screen/cart.dart';
import 'package:my_firstapp/bottom_screen/home.dart';
import 'package:my_firstapp/bottom_screen/profile.dart';

class ButtonNavigationBarScreen extends StatefulWidget {
  const ButtonNavigationBarScreen({super.key});

  @override
  State<ButtonNavigationBarScreen> createState() => _ButtonNavigationBarScreenState();
}

class _ButtonNavigationBarScreenState extends State<ButtonNavigationBarScreen> {
  int _selectedIndex=0;
  List<Widget> lstBottomScreen=[
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const AboutScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'About'
          ),
          
        ],
        backgroundColor: Colors.cyan,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
      ),

    );
  }
}