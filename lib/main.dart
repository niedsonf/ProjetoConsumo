// ignore_for_file: prefer_const_constructors

import 'package:consumo/login/login.dart';
import 'package:consumo/themes/customtheme.dart';
import 'package:consumo/utils/route.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: CustomTheme.darkMode,
    initialRoute: "/",
    onGenerateRoute: AppRoute.generateRoute,
    home: Builder(builder: (context) => Login()),
  ));
}
