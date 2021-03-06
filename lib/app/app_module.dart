import 'package:pomodoro_timer/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/app_widget.dart';
import 'package:pomodoro_timer/app/modules/home/home_module.dart';
import 'package:pomodoro_timer/app/modules/info/info_module.dart';
import 'package:pomodoro_timer/app/store/timer_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => TimerStore()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter('/info', module: InfoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
