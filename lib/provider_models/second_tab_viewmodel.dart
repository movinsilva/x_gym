/*
* Created by Movin on29/09/2020
* */

import 'package:flutter/material.dart';

class SecondeTabViewmodel extends ChangeNotifier{

  int _index = 0;

  int get index => _index;

  set index (int value ) {
    _index = value;
    notifyListeners();
  }

}