import 'package:flutter/material.dart';
import 'package:login_form/styles/colors.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final IconData? iconData;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomTextfield({ Key? key, 
    this.hintText = "Username", 
    this.iconData,
    this.textInputType,
    this.obscureText = false,
    this.suffixIcon,
    this.textEditingController }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      textAlign: TextAlign.center,
      style: TextStyle(color: white),
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: white.withOpacity(0.07),
        suffixIcon: suffixIcon,
        prefixIcon: Container(
          padding: EdgeInsets.all(17),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(100)
          ),
          child: Icon(iconData, color: secondPrimary,),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: white.withOpacity(0.3)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(150),
          borderSide: BorderSide(color: white, width: 1)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: white,
            width: 0.7
          )
        ),
      ),
    );
  }
}