import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'long_break_controller.dart';

class LongBreakPage extends StatefulWidget {
  @override
  _LongBreakPageState createState() => _LongBreakPageState();
}

class _LongBreakPageState
    extends ModularState<LongBreakPage, LongBreakController> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue);
  }
}
