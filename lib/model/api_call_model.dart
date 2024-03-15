// To parse this JSON data, do
//
//     final apiCallModel = apiCallModelFromJson(jsonString);

import 'dart:convert';

ApiCallModel apiCallModelFromJson(String str) => ApiCallModel.fromJson(json.decode(str));

String apiCallModelToJson(ApiCallModel data) => json.encode(data.toJson());

class ApiCallModel {
  String message;
  int? status;
  dynamic data;

  ApiCallModel({
    required this.message,
    this.status,
    this.data,
  });

  factory ApiCallModel.fromJson(Map<String, dynamic> json) => ApiCallModel(
    message: json["message"],
    status: json["status"],
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "message" : message,
    "status": status,
    "data": data,
  };
}
