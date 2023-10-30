// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  void loginapi() async {
    try {
      final response =
         await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailcontroller.value.text,
        'password': passwordcontroller.value.text,
      });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if (response.statusCode == 200) {
        Get.snackbar('Login Successful', 'Welcome ');
      } else {
        Get.snackbar('Login Unsuccessful', 'Please try again');
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  }
}
 