import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/info_screen.dart';
import '../screens/explore_screen.dart';

class BottomController extends ChangeNotifier {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const InfoScreen(),
    const ExploreScreen(),
  ];
  int get currentIndex => _currentIndex;
  Widget get currentScreen => _screens[_currentIndex];


  void updateIndex(int index) {
    _currentIndex =index;
    notifyListeners();
  }
}


