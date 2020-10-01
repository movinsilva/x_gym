/*
* Created by Movin on 01/10/2020
* */

import 'package:dio/dio.dart';
import 'package:x_gym/database_models/all_exercises_model.dart';
import 'package:x_gym/provider/db_provider.dart';

class AllExercisesApiProvider {
  Future<List<AllExercisesModel>> getAllExercises() async {
    var url = "http://192.168.1.6:5000/ecodeservices/getallexercises";
    Response response = await Dio().get(url);

    return (response.data as List).map((exercise) {
      print('Inserting $exercise');
      DBProvider.db.createExercise(AllExercisesModel.fromJson(exercise));
    }).toList();
  }
}