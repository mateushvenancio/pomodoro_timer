import 'package:mobx/mobx.dart';

part 'pomodoro_controller.g.dart';

class PomodoroController = _PomodoroControllerBase with _$PomodoroController;

abstract class _PomodoroControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
