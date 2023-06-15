import 'package:flutter/material.dart';
import 'package:login_form/components/custom_button.dart';
import 'package:login_form/styles/colors.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
class WeAlert {

  //create a loading function to load and cover the whole screen
  static loading() {
    return showDialog(
      context: navigatorKey.currentState!.context,
      barrierDismissible: false, // to tell that the cover container can't be dismissed
      builder: (context) => WillPopScope(
        child: AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          content: Center(
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: white
              ),
              child: CircularProgressIndicator(color: firstPrimary,)
            ),
          ),
        ), 
        onWillPop: () async {
          return false;
        }
      )
    );
  }

  //create a success alert message
  static success({
    String? description
  }) {
    return showDialog(
      context: navigatorKey.currentState!.context,
      barrierDismissible: false, // to tell that the cover container can't be dismissed
      builder: (context) => WillPopScope(
        child: AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          content: Center(
            child: Container(
              height: 200,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: white
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Success", style: TextStyle(color: firstPrimary, fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 15,),
                  Text(description ?? ""),
                  SizedBox(height: 20,),
                  CustomButton(
                    title: "Close",
                    onTap: () {
                      //close the success alert
                      close();
                    },
                  )
                ],
              )
            ),
          ),
        ), 
        onWillPop: () async {
          return false;
        }
      )
    );
  }


  static close() {
    navigatorKey.currentState!.pop();
  }
}