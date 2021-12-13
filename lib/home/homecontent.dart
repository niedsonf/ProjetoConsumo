import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consumo/mobxcontrollers/sensorlistcontroller.dart';
import 'package:consumo/utils/firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  late SensorListController sensorListController =
        Provider.of<SensorListController>(context);

  @override
  void didChangeDependencies() {
    
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    /*return FutureBuilder(
      future: Firestore.sensorData("IDSENSOR1"),
      builder: (_, snapshot) {
        Map<String, dynamic> sensorMap = snapshot.data as Map<String, dynamic>;
        return ListTile(
          title: Text(sensorMap['Hora']),
        );
      },
    );*/

    return Observer(builder: (_) {
      return ListView.builder(
        itemCount: sensorListController.sensorList.length,
        itemBuilder: (_, idx) {
          var sensor = sensorListController.sensorList[idx];
          return FutureBuilder(
            future: Firestore.sensorData(sensor.id),
            builder: (_, snapshot) {
              Map<String, dynamic> sensorMap =
                  snapshot.data as Map<String, dynamic>;
              return ListTile(
                title: Text(sensorMap['Hora']),
              );
            },
          );
        },
      );
   });
  }
}
