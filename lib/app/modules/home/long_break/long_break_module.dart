import 'package:pomodoro_timer/app/modules/home/long_break/long_break_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/home/long_break/long_break_page.dart';

class LongBreakModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LongBreakController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LongBreakPage()),
      ];

  static Inject get to => Inject<LongBreakModule>.of();
}
