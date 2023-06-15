import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:login_form/alert/we_alert.dart';

class Network {

  static signUp({
    String? username,
    String? password,
    String? email
  }) async {
    final dio = Dio();

    //run a loading function to cover the whole screen
    WeAlert.loading();
    final response = await dio.post('http://127.0.0.1:8000/api/sign_up',
      data: json.encode({
        "name" : username,
        "email" : email,
        "password" : password
      })
    );
    if (response.statusCode == 200) {
      // alert message success
      //if success close the loading
      WeAlert.close();
      // then alert a success message
      WeAlert.success(description: "You have created a new account");
      print("success");
    } else {
      // alert message fail
      print("fail");
    }
  } 

  static login ({
    String? email,
    String? password
  }) async {
     final dio = Dio();

    WeAlert.loading();
    print({
        "email" : email,
        "password" : password
      });
    final response = await dio.post('http://127.0.0.1:8000/api/sign_in',
      data: json.encode({
        "email" : email,
        "password" : password
      })
    );
     if (response.statusCode == 200) {
      // alert message success
      //if success close the loading
      WeAlert.close();
      // then alert a success message
      WeAlert.success(description: "You have successfully logined");
      print("success");
    } else {
      // alert message fail
      print("fail");
    }
   }
}