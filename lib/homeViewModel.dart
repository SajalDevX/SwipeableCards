import 'package:flutter/material.dart';

class HomeScreenViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  final List<String> _images = [
    'assets/images/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.avif',
    'assets/images/MainAfter.webp',
  ];
  int get currentIndex => _currentIndex;
  List<String> get images => _images;

  void previousImage() {
    _currentIndex = (_currentIndex - 1) % _images.length;
    notifyListeners();
  }

  void nextImage() {
    _currentIndex = (_currentIndex + 1) % _images.length;
    notifyListeners();
  }
}
