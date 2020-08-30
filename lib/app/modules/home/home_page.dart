import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/store/timer_enum.dart';
import 'package:pomodoro_timer/icons/pomodoro_icons.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    super.initState();
    controller.store.restart();
    controller.store.countdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Pomodoro.tomate, color: Colors.red),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.red,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Deseja reiniciar o relógio?'),
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Não'),
                      ),
                      FlatButton(
                        onPressed: () {
                          controller.store.restart();
                          Navigator.pop(context);
                        },
                        child: Text('Sim'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.red,
            ),
            onPressed: () {
              Modular.to.pushNamed('/info');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Observer(builder: (_) {
                  if (controller.store.position == TimerPosition.focus)
                    return Image.asset('assets/study.webp');
                  if (controller.store.position != TimerPosition.shortBreak)
                    return Image.asset('assets/rest.webp');
                  return Image.asset('assets/rest.webp');
                }),
              ),
              flex: 2,
            ),
            Observer(builder: (_) {
              if (controller.store.position == TimerPosition.shortBreak)
                return Text('Pausa de 5 minutos!');
              if (controller.store.position == TimerPosition.longBreak)
                return Text('Pausa de 15 minutos!');
              return Text('Mantenha-se em foco!');
            }),
            Expanded(
              child: Center(
                child: Observer(builder: (_) {
                  var _d = Duration(seconds: controller.store.secondsRemaining);
                  return Text(
                    // 'Tempo Restante:\n${controller.store.secondsRemaining}',
                    'Tempo Restante:\n${_d.toString().substring(2, 7)}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  );
                }),
              ),
              flex: 1,
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: Observer(builder: (_) {
        return FloatingActionButton(
          onPressed: () {
            controller.store.runningToggle();
          },
          child: controller.store.running
              ? Icon(Icons.pause)
              : Icon(Icons.play_arrow),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
