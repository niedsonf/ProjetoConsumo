import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  final TextEditingController controller;
  final String name;
  final Icon icon;
  final bool isPass;

  const FormInput(
      {Key? key,
      required this.controller,
      required this.icon,
      required this.isPass,
      required this.name})
      : super(key: key);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: const TextStyle(fontSize: 18, color: Color(0xFFCFCCFF)),
        obscureText: widget.isPass,
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.name,
          prefixIcon: widget.icon,
        ),
        keyboardType: TextInputType.name);
  }
}