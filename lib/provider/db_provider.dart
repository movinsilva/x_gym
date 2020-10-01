import 'dart:io';
import 'package:x_gym/database_models/all_exercises_model.dart';
import 'package:path/path.dart';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    // If database exists, return database
    if (_database != null) return _database;

    // If database don't exists, create one
    _database = await initDB();

    return _database;
  }

  // Create the database and the Employee table
  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'exercises_manager.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await  db.execute("CREATE TABLE all_exercises(id INTEGER PRIMARY KEY, name TEXT, related_muscle_id INTEGER, "
          "image_url TEXT, description TEXT);"
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

  // Insert exercise on database
  createExercise(AllExercisesModel exercise) async {
    await deleteAllExercises();
    final db = await database;
    final res = await db.insert('all_exercises', exercise.toJson());

    return res;
  }

  // Delete all exercises
  Future<int> deleteAllExercises() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM all_exercises');

    return res;
  }

  Future<List<AllExercisesModel>> getAllExercises() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM all_exercises");

    List<AllExercisesModel> list =
    res.isNotEmpty ? res.map((c) => AllExercisesModel.fromJson(c)).toList() : [];

    return list;


  }
}