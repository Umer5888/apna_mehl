// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

  class UserModel {
  String email;
  String name;
  dynamic mobileNumber;
  int id;
  String token;

  UserModel({
    required this.email,
    required this.name,
    required this.mobileNumber,
    required this.id,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    email: json["email"],
    name: json["name"],
    mobileNumber: json["mobile_number"],
    id: json["id"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "name": name,
    "mobile_number": mobileNumber,
    "id": id,
    "token": token,
  };
}
