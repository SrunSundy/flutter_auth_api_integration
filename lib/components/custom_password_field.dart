import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_form/components/custom_textfield.dart';

import '../styles/colors.dart';

class CustomPasswordField extends StatefulWidget {
  final TextEditingController? textEditingController;
  const CustomPasswordField({ Key? key, this.textEditingController }) : super(key: key);

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return CustomTextfield(
      hintText: "Password",
      iconData: Icons.key,
      textEditingController: widget.textEditingController,
      obscureText: !_showPassword,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            _showPassword = !_showPassword;
          });
        },
        child: Container(
          padding: EdgeInsets.all(17),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(100)
          ),
          child: Icon( !_showPassword ? FontAwesomeIcons.eyeSlash :  FontAwesomeIcons.eye, color: secondPrimary,),
        ),
      ),
      
    );
  }
}