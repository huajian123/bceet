import 'package:flutter/material.dart' show ChangeNotifier;

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set changePageIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }
}
