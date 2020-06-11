import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'short_break_controller.dart';

class ShortBreakPage extends StatefulWidget {
  @override
  _ShortBreakPageState createState() => _ShortBreakPageState();
}

class _ShortBreakPageState
    extends ModularState<ShortBreakPage, ShortBreakController> {
  @override
  void initState() {
    controller.timer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Observer(builder: (context) {
              return Text(
                controller.currentTime,
                style: TextStyle(fontSize: 50),
              );
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.startStopTimerRunning();
        },
        child: Icon(Icons.timer),
      ),
    );
  }
}
