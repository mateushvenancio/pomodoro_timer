import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pomodoro_controller.dart';

class PomodoroPage extends StatefulWidget {
  @override
  _PomodoroPageState createState() => _PomodoroPageState();
}

class _PomodoroPageState
    extends ModularState<PomodoroPage, PomodoroController> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green);
  }
}
