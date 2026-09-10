import 'package:buttom/add_screen.dart';
import 'package:buttom/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:buttom/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainScreen> {
  final screens = [
HomeScreen(),
    AddScreen(),
    ProfileScreen(),

  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add",),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile",),

        ],
      ),
    );
  }
}