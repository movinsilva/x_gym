import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  Future<Database> database() async {

    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    return openDatabase(join(await getDatabasesPath(), "user_database.db"),version: 1
        ,onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE all_exercises(id INTEGER PRIMARY KEY, name TEXT, related_muscle_id INTEGER, image_url TEXT)"
      );
    });
  }

  // open the database
  _initDatabase() async {
    // The path_provider plugin gets the right directory for Android or iOS.
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    // Open the database. Can also add an onUpdate callback parameter.
    return await openDatabase(path,
        version: _databaseVersion,
        onCreate: _onCreate);
  }
}
