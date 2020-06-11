import 'package:flutter/cupertino.dart';
import 'package:pomodoro_timer/app/configurations/page_shift_controller.dart';
import 'package:pomodoro_timer/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => PageController(initialPage: 1)),
        Bind((i) => PageShiftController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
