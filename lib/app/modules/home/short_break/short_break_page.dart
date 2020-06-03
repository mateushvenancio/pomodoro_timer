import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'short_break_controller.dart';

class ShortBreakPage extends StatefulWidget {
  @override
  _ShortBreakPageState createState() => _ShortBreakPageState();
}

class _ShortBreakPageState
    extends ModularState<ShortBreakPage, ShortBreakController> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}
