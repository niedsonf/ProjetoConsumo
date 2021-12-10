// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:consumo/login/widgets/formlogin.dart';
import 'package:consumo/login/widgets/formregister.dart';
import 'package:consumo/themes/customtheme.dart';
import 'package:consumo/utils/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late AnimationController _controllerLogin;
  late AnimationController _controllerRegister;

  @override
  void initState() {
    _controllerLogin =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _controllerRegister =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _controllerLogin.dispose();
    _controllerRegister.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Auth.initializeFirebase(context: context);
    return Theme(
      data: CustomTheme.darkMode,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/background.png"),
                    fit: BoxFit.fill),
              ),
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(32),
              child: Stack(children: [
                LoginForm(
                  controller: _controllerRegister,
                  controllerLogin: _controllerLogin,
                ),
                RegisterForm(controller: _controllerRegister)
              ])),
        ),
      ),
    );
  }
}
