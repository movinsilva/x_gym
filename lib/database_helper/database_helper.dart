import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Future<Database> database() async {
    var path = await getDatabasesPath();

    return openDatabase(join(await path, "user_database.db"), version: 1, onCreate: (db, version) {
      return db.execute("CREATE TABLE all_exercises(id INTEGER PRIMARY KEY, name TEXT, related_muscle_id INTEGER, "
          "image_url TEXT);"
          "CREATE TABLE all_muscles(id INTEGER PRIMARY KEY, related_muscle_id INTEGER, related_area_id INTEGER, "
          "image_url TEXT) ;"
          "CREATE TABLE all_exercises_all_muscles_association(id INTEGER PRIMARY KEY, related_muscle_id INTEGER, "
          "related_exercise_id ) ;"
          "CREATE TABLE all_schedules(id INTEGER PRIMARY KEY, name TEXT, assisgned_date TEXT, trainer_id INTEGER, "
          "day_count INTEGER) ;"
          "CREATE TABLE all_schedules_all_exercises_assignment(id INTEGER PRIMARY KEY, related_schedule_id INTEGER,"
          "Sub_schedule_name TEXT, related_exercise_id INTEGER, rep_count INTEGER, set_count INTEGER) ;"
          "CREATE TABLE workout_time(id INTEGER PRIMARY KEY, related_schedule_id INTEGER, related_Sub_schedule_id"
          "INTEGER, related_exercise_id INTEGER, date TEXT, time_period ) ;"
          "CREATE TABLE trainers(id INTEGER PRIMARY KEY, name TEXT, bio TEXT, contact_number INTEGER, email TEXT) ;"
          "CREATE TABLE payments(id INTEGER PRIMARY KEY, date TEXT, amount REAL, validity_period TEXT) ;"
          "CREATE TABLE body_measurements(id INTEGER PRIMARY KEY, criteria_name TEXT, unit TEXT) ;"
          "CREATE TABLE Body_measurement_history(id INTEGER PRIMARY KEY, date TEXT, value TEXT) ;");
    });
  }
}
