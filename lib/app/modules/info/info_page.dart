import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'info_controller.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends ModularState<InfoPage, InfoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre a técnica pomodoro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Text(
              'A técnica Pomodoro é uma técnica de gestão de tempo bastante adotada no mundo de hoje para quem quer estudar ou trabalhar.\nPomodoro significa tomate em português, daí o símbolo de tomate!\nA premissa da técnica é separar o tempo em blocos, sendo que cada um deles representa um pomodoro.\nCada divisão contém 25 minutos, e a ideia é trabalhar de maneira concentrada e sem interrupções em apenas uma tarefa durante todo esse bloco de tempo. Assim que o pomodoro terminar, você tem direito a um intervalo de 5 minutos. Quando forem finalizados 4 pomodoros a pausa é maior, 15 minutos.\nBons estudos e bom trabalho!',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1.2,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
