import 'package:mobx/mobx.dart';

part 'short_break_controller.g.dart';

class ShortBreakController = _ShortBreakControllerBase
    with _$ShortBreakController;

abstract class _ShortBreakControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
