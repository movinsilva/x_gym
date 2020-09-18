import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), "user_database.db"),
      onCreate: (db, version) {
        return db.execute("CREATE TABLE ")
      }
    );
  }
}