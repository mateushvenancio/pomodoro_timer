import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/home/long_break/long_break_module.dart';
import 'package:pomodoro_timer/app/modules/home/pomodoro/pomodoro_module.dart';
import 'package:pomodoro_timer/app/modules/home/short_break/short_break_module.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller.pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            RouterOutlet(module: ShortBreakModule()),
            RouterOutlet(module: PomodoroModule()),
            RouterOutlet(module: LongBreakModule()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.currentPage,
        onTap: (page) {
          setState(() {
            controller.goToPage(page);
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Short Break'),
            icon: Icon(Icons.timer),
          ),
          BottomNavigationBarItem(
            title: Text('Pomodoro'),
            icon: Icon(Icons.timer),
          ),
          BottomNavigationBarItem(
            title: Text('Long Break'),
            icon: Icon(Icons.timer),
          ),
        ],
      ),
    );
  }
}
