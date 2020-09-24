/*
* Created by Sandev on 2020/09/24
* */

import 'package:flutter/material.dart';

class MyHistoryViewModel extends ChangeNotifier {

  // hold the current tab index
  int _index = 0;

  int get index => _index;

  set index(int value) {
    _index = value;
    notifyListeners();
  }
}