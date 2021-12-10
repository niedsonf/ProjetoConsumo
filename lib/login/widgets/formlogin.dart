// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:consumo/login/widgets/formbuttonstyle.dart';
import 'package:consumo/login/widgets/forminput.dart';
import 'package:consumo/login/widgets/formlabel.dart';
import 'package:consumo/old/loginbutton.dart';
import 'package:consumo/model/appuser.dart';
import 'package:consumo/utils/auth.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final AnimationController controller;
  final AnimationController controllerLogin;
  const LoginForm(
      {Key? key, required this.controller, required this.controllerLogin})
      : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final Animation<Offset> _changeForm =
      Tween<Offset>(begin: Offset.zero, end: Offset(-1.5, 0.0)).animate(
          CurvedAnimation(
              parent: widget.controller, curve: Curves.easeInOutBack));

  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _changeForm,
      child: LabelForm(
        form: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormInput(
                    controller: _email,
                    icon: Icon(Icons.email, color: Color(0xFFCFCCFF)),
                    isPass: false,
                    name: "Email"),
                SizedBox(height: 20),
                FormInput(
                    controller: _senha,
                    icon: Icon(Icons.password, color: Color(0xFFCFCCFF)),
                    isPass: true,
                    name: "Senha"),
                SizedBox(height: 40),
                InkWell(
                  onTap: () => Auth.logar(
                      context: context,
                      rUser: AppUser(email: _email.text, senha: _senha.text)),
                  child: FormButtonStyle(
                      content: Text("Entrar",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF1B1766),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1))),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () => widget.controller.forward(),
                  child: FormButtonStyle(
                      content: Text("Cadastrar",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF1B1766),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1))),
                ),
              ],
            )),
      ),
    );
  }
}
