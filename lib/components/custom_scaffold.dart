import 'package:flutter/material.dart';
import 'package:login_form/styles/colors.dart';

class CustomScaffold extends StatelessWidget {

  final AppBar? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  const CustomScaffold({ Key? key, this.body = const SizedBox(), this.bottomNavigationBar, this.appBar  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        _getBackgroundWidget(),
        body,
        SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: bottomNavigationBar,
          ),
        )
      ],
    );
  }

  Widget _getBackgroundWidget() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            firstPrimary,
            secondPrimary
          ]
        )
      ),
    );
  }
}