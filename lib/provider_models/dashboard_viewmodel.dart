/*
* Created by Sandev on 22/09/2020
* */

import 'package:flutter/material.dart';

class DashboardViewModel extends ChangeNotifier {

  // hold the total workout time
  String _totalWorkoutTime = "00:00";
  // hold the total workout for legs
  String _legs = "00:00";
  // hold the total workout for the arms
  String _arms = "00:00";
  // hold the total workout for the shoulders
  String _shoulders = "00:00";
  // hold the total workout for the abs;
  String _abs = "00:00";
  // hold the total workout for the chest;
  String _chest = "00:00";
  // hold the index of the tab
  int _tab_index = 0;

  String get totalWorkoutTime => _totalWorkoutTime;

  set totalWorkoutTime(String value) {
    _totalWorkoutTime = value;
    notifyListeners();
  }

  String get legs => _legs;

  set legs(String value) {
    _legs = value;
    notifyListeners();
  }

  int get tab_index => _tab_index;

  set tab_index(int value) {
    _tab_index = value;
    notifyListeners();
  }

  String get chest => _chest;

  set chest(String value) {
    _chest = value;
    notifyListeners();
  }

  String get abs => _abs;

  set abs(String value) {
    _abs = value;
    notifyListeners();
  }

  String get shoulders => _shoulders;

  set shoulders(String value) {
    _shoulders = value;
    notifyListeners();
  }

  String get arms => _arms;

  set arms(String value) {
    _arms = value;
    notifyListeners();
  }
}