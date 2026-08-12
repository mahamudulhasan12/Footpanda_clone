import 'package:flutter/material.dart';

import '../../util/app_colors.dart';
import '../Card Screen/card_screen.dart';
import '../Grocery Item/grocery_screen.dart';
import '../Profile/profile_screen.dart';
import '../home/home_screen.dart';
import '../search/search_screen.dart';

class NavigationBottonBar extends StatefulWidget {
  const NavigationBottonBar({super.key});

  @override
  State<NavigationBottonBar> createState() => _NavigationBottonBarState();
}

class _NavigationBottonBarState extends State<NavigationBottonBar> {
  int _currentInde= 0;
  _bottonNavigationBottonBar(int index){
    setState(() {
      _currentInde =index;
    });
  }
  List<Widget> page =[
    HomeScreen(),
    GroceryScreen(),
    SearchScreen(),
    CardScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentInde,
        onTap: _bottonNavigationBottonBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.pColros,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.flatware,size: 30,), label: "Food"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag,size: 30),
            label: "Grocery",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flatware,size: 30),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart,size: 30),
            label: "Carts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,size: 30),
            label: "Accounts",
          ),
        ],
      ),
      body: page[_currentInde],
    );
  }
}
