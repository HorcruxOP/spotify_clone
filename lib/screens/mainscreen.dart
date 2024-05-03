import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/homescreen.dart';
import 'package:spotify_clone/screens/libraryscreen.dart';
import 'package:spotify_clone/screens/premiumscreen.dart';
import 'package:spotify_clone/screens/searchscreen.dart';
import 'package:spotify_clone/widgets/bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List screen = [
    const HomeScreen(),
    const SearchScreen(),
    const LibraryScreen(),
    const PremiumScreen(),
  ];
  void _onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screen[selectedIndex],
        bottomNavigationBar: BottomNavBar(
          currentIndex: selectedIndex,
          onTap: _onTap,
        ),
      ),
    );
  }
}
