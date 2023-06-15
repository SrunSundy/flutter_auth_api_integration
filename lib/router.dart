

import 'package:flutter/material.dart';
import 'package:login_form/pages/login_page.dart';
import 'package:login_form/pages/sign_up_page.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch(routeSettings.name) {
    case "/login" : 
      return MaterialPageRoute(builder: (context) => LoginPage());
    case "/sign_up" : 
      return MaterialPageRoute(builder: (context) => SignUpPage());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("Page Name"),
          ),
          body: const Center(child: Text("Page Not found")),
        )
      );
  }
}