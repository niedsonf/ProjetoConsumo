// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensorlistcontroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SensorListController on SensorListControllerBase, Store {
  final _$inputIDAtom = Atom(name: 'SensorListControllerBase.inputID');

  @override
  String get inputID {
    _$inputIDAtom.reportRead();
    return super.inputID;
  }

  @override
  set inputID(String value) {
    _$inputIDAtom.reportWrite(value, super.inputID, () {
      super.inputID = value;
    });
  }

  final _$inputComodoAtom = Atom(name: 'SensorListControllerBase.inputComodo');

  @override
  String get inputComodo {
    _$inputComodoAtom.reportRead();
    return super.inputComodo;
  }

  @override
  set inputComodo(String value) {
    _$inputComodoAtom.reportWrite(value, super.inputComodo, () {
      super.inputComodo = value;
    });
  }

  final _$SensorListControllerBaseActionController =
      ActionController(name: 'SensorListControllerBase');

  @override
  void setID(String value) {
    final _$actionInfo = _$SensorListControllerBaseActionController.startAction(
        name: 'SensorListControllerBase.setID');
    try {
      return super.setID(value);
    } finally {
      _$SensorListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComodo(String value) {
    final _$actionInfo = _$SensorListControllerBaseActionController.startAction(
        name: 'SensorListControllerBase.setComodo');
    try {
      return super.setComodo(value);
    } finally {
      _$SensorListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
inputID: ${inputID},
inputComodo: ${inputComodo}
    ''';
  }
}
