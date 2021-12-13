// ignore_for_file: prefer_const_constructors

import 'package:consumo/login/login.dart';
import 'package:consumo/mobxcontrollers/sensorcontroller.dart';
import 'package:consumo/mobxcontrollers/sensorlistcontroller.dart';
import 'package:consumo/themes/customtheme.dart';
import 'package:consumo/utils/route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(MultiProvider(
    providers: [
      Provider<SensorListController>(create: (_) => SensorListController()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.darkMode,
      initialRoute: "/",
      onGenerateRoute: AppRoute.generateRoute,
      home: Builder(builder: (context) => Login()),
    ),
  ));
}
