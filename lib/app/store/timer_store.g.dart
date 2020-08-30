// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TimerStore on _TimerStoreBase, Store {
  final _$positionAtom = Atom(name: '_TimerStoreBase.position');

  @override
  TimerPosition get position {
    _$positionAtom.reportRead();
    return super.position;
  }

  @override
  set position(TimerPosition value) {
    _$positionAtom.reportWrite(value, super.position, () {
      super.position = value;
    });
  }

  final _$runningAtom = Atom(name: '_TimerStoreBase.running');

  @override
  bool get running {
    _$runningAtom.reportRead();
    return super.running;
  }

  @override
  set running(bool value) {
    _$runningAtom.reportWrite(value, super.running, () {
      super.running = value;
    });
  }

  final _$secondsRemainingAtom = Atom(name: '_TimerStoreBase.secondsRemaining');

  @override
  int get secondsRemaining {
    _$secondsRemainingAtom.reportRead();
    return super.secondsRemaining;
  }

  @override
  set secondsRemaining(int value) {
    _$secondsRemainingAtom.reportWrite(value, super.secondsRemaining, () {
      super.secondsRemaining = value;
    });
  }

  final _$_TimerStoreBaseActionController =
      ActionController(name: '_TimerStoreBase');

  @override
  dynamic runningToggle() {
    final _$actionInfo = _$_TimerStoreBaseActionController.startAction(
        name: '_TimerStoreBase.runningToggle');
    try {
      return super.runningToggle();
    } finally {
      _$_TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTime(TimerPosition position) {
    final _$actionInfo = _$_TimerStoreBaseActionController.startAction(
        name: '_TimerStoreBase.setTime');
    try {
      return super.setTime(position);
    } finally {
      _$_TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic countdown() {
    final _$actionInfo = _$_TimerStoreBaseActionController.startAction(
        name: '_TimerStoreBase.countdown');
    try {
      return super.countdown();
    } finally {
      _$_TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic restart() {
    final _$actionInfo = _$_TimerStoreBaseActionController.startAction(
        name: '_TimerStoreBase.restart');
    try {
      return super.restart();
    } finally {
      _$_TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
position: ${position},
running: ${running},
secondsRemaining: ${secondsRemaining}
    ''';
  }
}
