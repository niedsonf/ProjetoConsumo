import 'package:mobx/mobx.dart';
part 'sensorcontroller.g.dart';

class SensorController = SensorControllerBase with _$SensorController;

abstract class SensorControllerBase with Store {
  SensorControllerBase(this.id, this.comodo);
  final String id;

  @observable
  String comodo;

  void alterarComodo(String value) => comodo = value;
}
