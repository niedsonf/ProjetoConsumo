// ignore_for_file: prefer_const_constructors
/*
import 'package:consumo/model/appuser.dart';
import 'package:consumo/utils/auth.dart';
import 'package:flutter/material.dart';

class AnimatedLoginB extends StatefulWidget {
  final AnimationController controller;
  final AppUser appUser;
    AnimatedLoginB(
      {Key? key, required this.controller, required this.appUser})
      : animatedLogin = Tween<double>(begin: 400, end: 1000).animate(
            CurvedAnimation(
                parent: controller, curve: Curves.easeInExpo)),
        super(key: key);

  final Animation<double> animatedLogin;

  @override
  _AnimatedLoginBState createState() => _AnimatedLoginBState();
}

class _AnimatedLoginBState extends State<AnimatedLoginB> {

  Widget buildButton (BuildContext context, Widget? child) {
    return InkWell(
          onTap: () {
            Auth.logar(
              context: context, rUser: AppUser(email: widget.appUser.email, senha: widget.appUser.senha));
            //widget.controller.forward();
          },
          child: Container(
            width: widget.animatedLogin.value,
            height: 45,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF8880FF), Color(0xFFBBB8E6)]),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: widget.animatedLogin.value == 400
                ? Text("Entrar",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF1B1766),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1))
                : CircularProgressIndicator(
                    strokeWidth: 2, color: Color(0xFF1B1766)),
          ));
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: buildButton,
    
    );
  }
}
*/