import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/app/store/timer_enum.dart';
import 'package:vibration/vibration.dart';
part 'timer_store.g.dart';

class TimerStore = _TimerStoreBase with _$TimerStore;

abstract class _TimerStoreBase with Store {
  final int focusSeconds = 1500;
  final int shortBreakSeconds = 300;
  final int longBreakSeconds = 900;

  int shortBreakCounter = 0;

  @observable
  TimerPosition position = TimerPosition.focus;

  @observable
  bool running = false;

  @observable
  int secondsRemaining = 0;

  @action
  runningToggle() => running = !running;

  @action
  setTime(TimerPosition _position) {
    switch (_position) {
      case TimerPosition.focus:
        secondsRemaining = focusSeconds;
        break;
      case TimerPosition.shortBreak:
        secondsRemaining = shortBreakSeconds;
        break;
      case TimerPosition.longBreak:
        secondsRemaining = longBreakSeconds;
        break;
      default:
    }
    position = _position;
  }

  @action
  countdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (running) {
        if (secondsRemaining == 0) {
          if (position != TimerPosition.focus) {
            setTime(TimerPosition.focus);
          } else {
            if (shortBreakCounter == 2) {
              setTime(TimerPosition.longBreak);
              shortBreakCounter = 0;
            } else {
              setTime(TimerPosition.shortBreak);
              shortBreakCounter = shortBreakCounter + 1;
            }
          }
          vibrar();
        } else {
          secondsRemaining = secondsRemaining - 1;
        }
      }
    });
  }

  @action
  restart() {
    position = TimerPosition.focus;
    setTime(TimerPosition.focus);
    running = false;
    shortBreakCounter = 0;
  }

  vibrar() async {
    if (await Vibration.hasVibrator()) {
      await Vibration.vibrate(duration: 1000);
    }
  }
}
