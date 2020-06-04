import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'long_break_controller.g.dart';

class LongBreakController = _LongBreakControllerBase with _$LongBreakController;

abstract class _LongBreakControllerBase with Store {
  final pageController = Modular.get<PageController>();

  @observable
  String currentTime = '10:00';

  @observable
  bool isTimerRunning = false;

  int seconds = 600;

  @action
  void startStopTimerRunning() => isTimerRunning = !isTimerRunning;

  @action
  timer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (seconds < 0) {
        isTimerRunning = false;
        seconds = 600;
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
    pageController.animateToPage(
      1,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}
