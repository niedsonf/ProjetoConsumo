// ignore_for_file: prefer_const_constructors

import 'package:consumo/login/widgets/formbuttonstyle.dart';
import 'package:consumo/mobxcontrollers/sensorlistcontroller.dart';
import 'package:consumo/themes/customtheme.dart';
import 'package:consumo/utils/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddDialog extends StatefulWidget {
  late Animation<double> _scaleDialog;
  late Animation<double> _fadeContent;
  final AnimationController AController;
  AddDialog({Key? key, required this.AController})
      : _scaleDialog = CurvedAnimation(
            parent: AController,
            curve: Interval(0, 0.7, curve: Curves.fastOutSlowIn)),
        _fadeContent = CurvedAnimation(
            parent: AController,
            curve: Interval(0.5, 1, curve: Curves.easeOutQuad)),
        super(key: key);

  @override
  _AddDialogState createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  late SensorListController sensorListController =
      Provider.of<SensorListController>(context, listen: false);

  @override
  void initState() {
    widget.AController.forward();
    super.initState();
  }

  @override
  void dispose() {
    widget.AController.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: CustomTheme.darkMode,
      child: ScaleTransition(
        scale: widget._scaleDialog,
        child: AlertDialog(
            backgroundColor: Color(0xFF1B1766),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    topLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28))),
            content: Container(
              padding: EdgeInsets.all(16),
              child: FadeTransition(
                opacity: widget._fadeContent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Cadastre o Sensor",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFFCFCCFF))),
                    SizedBox(height: 20),
                    TextField(
                        onChanged: (value) => sensorListController.setID(value),
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFCFCCFF)),
                        decoration: InputDecoration(
                            labelText: "ID",
                            prefixIcon: Icon(Icons.settings_applications,
                                color: Color(0xFFCFCCFF)))),
                    SizedBox(height: 20),
                    TextField(
                        onChanged: (value) =>
                            sensorListController.setComodo(value),
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFCFCCFF)),
                        decoration: InputDecoration(
                            labelText: "Cômodo",
                            prefixIcon:
                                Icon(Icons.house, color: Color(0xFFCFCCFF)))),
                  ],
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => widget.AController.reverse()
                          .then((_) => Navigator.pop(context)),
                      child: FormButtonStyle(
                          content: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF1B1766),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        sensorListController.addSensor();
                      },
                      child: FormButtonStyle(
                          content: Text("Adicionar",
                              style:
                                  TextStyle(fontSize: 18, letterSpacing: 1))),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
