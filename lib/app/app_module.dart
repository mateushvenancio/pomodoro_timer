import 'package:pomodoro_timer/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/app_widget.dart';
import 'package:pomodoro_timer/app/modules/home/home_module.dart';
import 'package:pomodoro_timer/app/modules/home/long_break/long_break_module.dart';
import 'package:pomodoro_timer/app/modules/home/pomodoro/pomodoro_module.dart';
import 'package:pomodoro_timer/app/modules/home/short_break/short_break_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/pomodoro', module: PomodoroModule()),
        Router('/short_break', module: ShortBreakModule()),
        Router('/long_break', module: LongBreakModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
