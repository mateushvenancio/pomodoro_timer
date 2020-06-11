import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/app/configurations/page_shift_controller.dart';

part 'pomodoro_controller.g.dart';

class PomodoroController = _PomodoroControllerBase with _$PomodoroController;

abstract class _PomodoroControllerBase with Store {
  final pageShiftController = Modular.get<PageShiftController>();
  final pageController = Modular.get<PageController>();
  int shortBreakCounter = 0;

  @observable
  String currentTime = '25:00';

  @observable
  bool isTimerRunning = false;

  int seconds = 1500;

  @action
  void startStopTimerRunning() => isTimerRunning = !isTimerRunning;

  @action
  timer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (seconds < 0) {
        isTimerRunning = false;
        seconds = 1500;
        onTimerFinish();
      }

      if (isTimerRunning) {
        DateTime current = DateTime(0, 0, 0, 0, 0, seconds, 0);

        String sMinutes =
            (current.minute < 10 ? "0" : "") + current.minute.toString();
        String sSeconds =
            (current.second < 10 ? "0" : "") + current.second.toString();

        currentTime = '$sMinutes:$sSeconds';

        seconds--;
      }
    });
  }

  @action
  void onTimerFinish() {
    if (shortBreakCounter >= 2) {
      shortBreakCounter = 0;
      pageShiftController.goToLongBreak();
    } else {
      shortBreakCounter++;
      pageShiftController.goToShortBreak();
    }
  }
}
