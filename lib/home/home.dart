// ignore_for_file: prefer_const_constructors

import 'package:consumo/home/homecontent.dart';
import 'package:consumo/home/preferences.dart';
import 'package:consumo/home/profile.dart';
import 'package:consumo/home/widgets/adddialog.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final Object? userDados;
  final Map<String, dynamic> userDadosMap;
  const Home({Key? key, required this.userDados})
      : userDadosMap = userDados as Map<String, dynamic>,
        super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _nome = "";
  int _currentIdx = 0;
  List<Widget> telas = [Profile(), Preferences(), HomeContent()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Olá ${_nome},")),
        body: telas[_currentIdx],
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () => showDialog(context: context, builder: (context) => AddDialog()),
            icon: Icon(Icons.add),
            label: Text("Add. Sensor")),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIdx,
          selectedItemColor: Color(0xFF1B1766),
          unselectedItemColor: Color(0xFF2D26A6),
          type: BottomNavigationBarType.shifting,
          onTap: (idx) {
            setState(() {
              _currentIdx = idx;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Preferências",
                backgroundColor: Color(0xFFCFCCFF)),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Color(0xFFCFCCFF)),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Perfil",
                backgroundColor: Color(0xFFCFCCFF)),
          ],
        ));
  }
}
