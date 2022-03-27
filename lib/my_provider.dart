import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProvider extends ChangeNotifier{
  int counter=0;
  void increment(){
    counter++;
    notifyListeners();
  }

}