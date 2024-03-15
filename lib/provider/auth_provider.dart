import 'dart:convert';
import 'package:ecommerce/login_screen.dart';
import 'package:ecommerce/model/api_call_model.dart';
import 'package:ecommerce/model/user_model.dart';
import 'package:ecommerce/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../helper/notify.dart';

class AuthProvider with ChangeNotifier {

  UserModel? userModel;

  String email = '';
  String password = '';
  String name = '';
  String phone = '';

  setEmail(String val){
    email = val;
    notifyListeners();
  }

  setPassword(String value){
    password = value;
    notifyListeners();
  }

  setName(String nam){
    name = nam;
    notifyListeners();
  }
  setPhone(String mobile_number){
    phone = mobile_number;
  }

  callLoginApi() async {

    var headers = {
      'Accept': 'application/json'
    };
    var request = http.MultipartRequest('POST', Uri .parse('https://emart.zahidaz.com/api/user/login'));
    request.fields.addAll({
      'email': email,
      'password': password,
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    dynamic res = await response.stream.bytesToString();

    ApiCallModel apiCallModel = apiCallModelFromJson(res);

    if (response.statusCode == 200) {

      // reset();

      userModel = userModelFromJson(jsonEncode(apiCallModel.data).toString());

      // save user data in prefs
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('user', jsonEncode(userModel));

      Get.to(() => BottomNavBar());

    } else {
      // toast
      errorNotify(apiCallModel.message);
    }

    notifyListeners();
  }

  callSignupApi() async {

    var headers = {
      'Accept': 'application/json'
    };
    var request = http.MultipartRequest('POST', Uri .parse('https://emart.zahidaz.com/api/user/register'));
    request.fields.addAll({
      'email': email,
      'password': password,
      'name': name,
      'mobile_number': phone,
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    dynamic res = await response.stream.bytesToString();

    ApiCallModel apiCallModel = apiCallModelFromJson(res);

    if (response.statusCode == 200) {

      // reset();

      userModel = userModelFromJson(jsonEncode(apiCallModel.data).toString());

      // save user data in prefs
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('user', jsonEncode(userModel));

      Get.to(() => LoginScreen());

    } else {
      // toast
      errorNotify(apiCallModel.message);
    }

    notifyListeners();
  }

  setUser() async {
    // retrieve user data from prefs
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? user = prefs.getString('user');
    userModel = userModelFromJson(user.toString());
    notifyListeners();
  }

  reset(){
    password = '';
    notifyListeners();
  }
}