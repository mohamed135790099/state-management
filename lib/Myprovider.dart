import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  ThemeMode tm = ThemeMode.light;
  bool swVale = false;

  void switchChange(bool value) {

      swVale = value;
      if (swVale == false) {
        tm = ThemeMode.light;
        print("$tm");
      } else {
        tm = ThemeMode.dark;
        print("$tm");
      }
      notifyListeners();
  }
}