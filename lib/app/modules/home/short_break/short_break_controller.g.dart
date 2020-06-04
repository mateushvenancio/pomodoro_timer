// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_break_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShortBreakController on _ShortBreakControllerBase, Store {
  final _$currentTimeAtom = Atom(name: '_ShortBreakControllerBase.currentTime');

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
      Atom(name: '_ShortBreakControllerBase.isTimerRunning');

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

  final _$_ShortBreakControllerBaseActionController =
      ActionController(name: '_ShortBreakControllerBase');

  @override
  void startStopTimerRunning() {
    final _$actionInfo = _$_ShortBreakControllerBaseActionController
        .startAction(name: '_ShortBreakControllerBase.startStopTimerRunning');
    try {
      return super.startStopTimerRunning();
    } finally {
      _$_ShortBreakControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic timer() {
    final _$actionInfo = _$_ShortBreakControllerBaseActionController
        .startAction(name: '_ShortBreakControllerBase.timer');
    try {
      return super.timer();
    } finally {
      _$_ShortBreakControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTimerFinish() {
    final _$actionInfo = _$_ShortBreakControllerBaseActionController
        .startAction(name: '_ShortBreakControllerBase.onTimerFinish');
    try {
      return super.onTimerFinish();
    } finally {
      _$_ShortBreakControllerBaseActionController.endAction(_$actionInfo);
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
