import 'dart:ffi';

import 'package:flutter/material.dart';

class FormButtonStyle extends StatefulWidget {
  final Widget content;

  const FormButtonStyle({Key? key, required this.content}) : super(key: key);

  @override
  _FormButtonStyleState createState() => _FormButtonStyleState();
}

class _FormButtonStyleState extends State<FormButtonStyle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 45,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFF8880FF), Color(0xFFBBB8E6)]),
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: widget.content,
    );
  }
}
