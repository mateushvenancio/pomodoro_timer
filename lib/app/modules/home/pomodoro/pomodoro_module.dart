import 'package:pomodoro_timer/app/modules/home/pomodoro/pomodoro_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/home/pomodoro/pomodoro_page.dart';

class PomodoroModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PomodoroController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PomodoroPage()),
      ];

  static Inject get to => Inject<PomodoroModule>.of();
}
