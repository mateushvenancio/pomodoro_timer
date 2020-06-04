import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'short_break_controller.g.dart';

class ShortBreakController = _ShortBreakControllerBase
    with _$ShortBreakController;

abstract class _ShortBreakControllerBase with Store {
  final pageController = Modular.get<PageController>();

  @observable
  String currentTime = '05:00';

  @observable
  bool isTimerRunning = false;

  int seconds = 300;

  @action
  void startStopTimerRunning() => isTimerRunning = !isTimerRunning;

  @action
  timer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (seconds < 0) {
        isTimerRunning = false;
        seconds = 300;
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
