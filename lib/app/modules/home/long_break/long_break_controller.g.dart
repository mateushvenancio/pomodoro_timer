// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'long_break_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LongBreakController on _LongBreakControllerBase, Store {
  final _$currentTimeAtom = Atom(name: '_LongBreakControllerBase.currentTime');

  @override
  String get currentTime {
    _$currentTimeAtom.reportRead();
    return super.currentTime;
  }

  @override
  set currentTime(String value) {
    _$currentTimeAtom.reportWrite(value, super.currentTime, () {
      super.currentTime = value;
    });
  }

  final _$isTimerRunningAtom =
      Atom(name: '_LongBreakControllerBase.isTimerRunning');

  @override
  bool get isTimerRunning {
    _$isTimerRunningAtom.reportRead();
    return super.isTimerRunning;
  }

  @override
  set isTimerRunning(bool value) {
    _$isTimerRunningAtom.reportWrite(value, super.isTimerRunning, () {
      super.isTimerRunning = value;
    });
  }

  final _$_LongBreakControllerBaseActionController =
      ActionController(name: '_LongBreakControllerBase');

  @override
  void startStopTimerRunning() {
    final _$actionInfo = _$_LongBreakControllerBaseActionController.startAction(
        name: '_LongBreakControllerBase.startStopTimerRunning');
    try {
      return super.startStopTimerRunning();
    } finally {
      _$_LongBreakControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic timer() {
    final _$actionInfo = _$_LongBreakControllerBaseActionController.startAction(
        name: '_LongBreakControllerBase.timer');
    try {
      return super.timer();
    } finally {
      _$_LongBreakControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTimerFinish() {
    final _$actionInfo = _$_LongBreakControllerBaseActionController.startAction(
        name: '_LongBreakControllerBase.onTimerFinish');
    try {
      return super.onTimerFinish();
    } finally {
      _$_LongBreakControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentTime: ${currentTime},
isTimerRunning: ${isTimerRunning}
    ''';
  }
}
