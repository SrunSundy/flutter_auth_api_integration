import 'package:flutter/material.dart';
import 'package:login_form/alert/we_alert.dart';
import 'package:login_form/pages/login_page.dart';
import 'package:login_form/router.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp(page: LoginPage(),));
}

class MyApp extends StatefulWidget {
  final Widget? page;
  const MyApp({Key? key, this.page}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: navigatorKey,
        onGenerateRoute: generateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: widget.page,
      ),
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
