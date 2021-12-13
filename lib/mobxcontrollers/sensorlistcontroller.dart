import 'package:consumo/mobxcontrollers/sensorcontroller.dart';
import 'package:consumo/utils/firestore.dart';
import 'package:consumo/utils/firestore.dart';
import 'package:mobx/mobx.dart';
part 'sensorlistcontroller.g.dart';

class SensorListController = SensorListControllerBase
    with _$SensorListController;

abstract class SensorListControllerBase with Store {
  @observable
  String inputID = "";
  @observable
  String inputComodo = "";

  @action
  void setID(String value) => inputID = value;

  @action
  void setComodo(String value) => inputComodo = value;

  @action
  String get id => inputID;

  @action
  String get comodo => inputComodo;

  ObservableList<SensorController> sensorList = ObservableList();

  @action
  Future<Map<String, dynamic>?> get data async => Firestore.sensorData(id);

  void addSensor() async {
    Future<Map<String, dynamic>?> response = data;
    sensorList.add(SensorController(id, comodo));
  }
}
