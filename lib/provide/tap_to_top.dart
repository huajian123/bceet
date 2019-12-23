import 'package:flutter/material.dart' show ChangeNotifier;
import 'package:flutter/widgets.dart';

class TapToTopModelProvider with ChangeNotifier {
  double _height;
  bool _showTopBtn;
  ScrollController _scrollController;

  ScrollController get scrollController => _scrollController;

  double get height => _height;

  bool get showTopBtn => _showTopBtn;

  TapToTopModelProvider(scrollController, {double height: 200}) {
    print(1234);
    print(scrollController);
    _scrollController = scrollController;
    _height = height;
  }

  init() {
    print(12354);
    _scrollController.addListener(() {
      if (_scrollController.offset > _height && !_showTopBtn) {
        _showTopBtn = true;
        print(12);
        print(_scrollController.offset);
        notifyListeners();
      } else if (_scrollController.offset < _height && _showTopBtn) {
        _showTopBtn = false;
        print(height);
        notifyListeners();
      }
    });
  }

  scrollToTop() {
    _scrollController.animateTo(0,
        duration: Duration(milliseconds: 300), curve: Curves.easeOutCubic);
  }
}
