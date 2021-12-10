import 'package:flutter/material.dart';

class LabelForm extends StatelessWidget {
  final Widget form;
  const LabelForm({Key? key, required this.form}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(28),
              bottomRight: Radius.circular(28)),
          color: Color(0xFF1B1766),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF1B1766), blurRadius: 4, spreadRadius: 1)
          ]),
      child: form,
    );
  }
}
