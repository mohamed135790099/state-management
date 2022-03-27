import 'package:flutter/material.dart';

class MyProvider2 extends ChangeNotifier{
  int _count=0;

  int get count=>_count;

  void increment(){
    _count++;
    notifyListeners();
  }

}