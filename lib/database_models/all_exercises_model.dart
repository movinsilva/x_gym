// To parse this JSON data, do
//
//     final allExercisesModel = allExercisesModelFromJson(jsonString);

import 'dart:convert';

List<AllExercisesModel> allExercisesModelFromJson(String str) => List<AllExercisesModel>.from(json.decode(str).map((x) => AllExercisesModel.fromJson(x)));

String allExercisesModelToJson(List<AllExercisesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllExercisesModel {
  AllExercisesModel({
    this.id,
    this.name,
    this.relatedMuscleId,
    this.imageUrl,
    this.description,
  });

  int id;
  String name;
  int relatedMuscleId;
  String imageUrl;
  String description;

  factory AllExercisesModel.fromJson(Map<String, dynamic> json) => AllExercisesModel(
    id: json["id"],
    name: json["name"],
    relatedMuscleId: json["related_muscle_id"],
    imageUrl: json["image_url"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "related_muscle_id": relatedMuscleId,
    "image_url": imageUrl,
    "description": description,
  };
}