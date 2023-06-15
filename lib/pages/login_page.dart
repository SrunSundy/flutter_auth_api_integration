import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_form/alert/we_alert.dart';
import 'package:login_form/components/custom_button.dart';
import 'package:login_form/components/custom_password_field.dart';
import 'package:login_form/components/custom_scaffold.dart';
import 'package:login_form/components/custom_textfield.dart';
import 'package:login_form/network/network.dart';
import 'package:login_form/styles/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }


  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 40,right: 40),
      child: Column(
        children: [
          SizedBox(height: 200,),
          _getLogo(),
          _getTitle(),
          SizedBox(height: 100,),
          _getEmail(),
          SizedBox(height: 15,),
          _getPassword(),
          SizedBox(height: 35,),
          _getButton(),
          SizedBox(height: 35,),
          _getSignUp()  
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return InkWell(
      child: Container(
        child: Text("Forgot Password?", style: TextStyle(color: white, fontWeight: FontWeight.bold),),
      ),
    );
  }

  Widget _getLogo() {
    return Container();
  }

  Widget _getTitle() {
    return Container(
      child: Column(
        children: [
          Text("FoodApp", style:  
            TextStyle(color:  white, fontSize: 50,fontWeight: FontWeight.w600),
          ),
          Text("Always Give Better Food Ever", style: 
            TextStyle(color: yellow, fontWeight: FontWeight.w500, fontSize: 13)
          )
        ],
      )
    );
  }

  Widget _getEmail() {
    return CustomTextfield(
      hintText: "Email",
      iconData: Icons.mail,
      suffixIcon: SizedBox(),
      textEditingController: emailController,
    );
  }

  Widget _getPassword() {
    return CustomPasswordField(
      textEditingController: passwordController,
    );
  }

  Widget _getButton() {
    return CustomButton(
      title: "LOGIN",
      onTap: () {
        Network.login(
          email: emailController.text,
          password: passwordController.text
        );
      },
    );
  }

  Widget _getSignUp() {
    return Text.rich(
      TextSpan(
        style: TextStyle(color: white),
        children: [
          TextSpan(text: "Don't have an account? "),
          TextSpan(text: "Sign Up Now", style: TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap = () {
              Navigator.pushNamed(context, "/sign_up");
            }
          )
        ]
      )
    );
  }
}