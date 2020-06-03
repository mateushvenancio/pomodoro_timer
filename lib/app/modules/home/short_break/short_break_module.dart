import 'package:pomodoro_timer/app/modules/home/short_break/short_break_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/home/short_break/short_break_page.dart';

class ShortBreakModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ShortBreakController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ShortBreakPage()),
      ];

  static Inject get to => Inject<ShortBreakModule>.of();
}
