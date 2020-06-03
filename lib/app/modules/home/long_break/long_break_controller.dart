import 'package:mobx/mobx.dart';

part 'long_break_controller.g.dart';

class LongBreakController = _LongBreakControllerBase with _$LongBreakController;

abstract class _LongBreakControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
