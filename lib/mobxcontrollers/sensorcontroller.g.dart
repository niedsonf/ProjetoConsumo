// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensorcontroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SensorController on SensorControllerBase, Store {
  final _$comodoAtom = Atom(name: 'SensorControllerBase.comodo');

  @override
  String get comodo {
    _$comodoAtom.reportRead();
    return super.comodo;
  }

  @override
  set comodo(String value) {
    _$comodoAtom.reportWrite(value, super.comodo, () {
      super.comodo = value;
    });
  }

  @override
  String toString() {
    return '''
comodo: ${comodo}
    ''';
  }
}
