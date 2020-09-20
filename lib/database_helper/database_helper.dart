import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  Future<Database> database() async {

    var path = await getDatabasesPath();

    return openDatabase(join(await path, "user_database.db"),version: 1
        ,onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE all_exercises(id INTEGER PRIMARY KEY, name TEXT, related_muscle_id INTEGER, image_url TEXT)"
      );
    });
  }
}
