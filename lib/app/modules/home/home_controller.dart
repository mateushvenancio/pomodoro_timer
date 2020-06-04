import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final pageController = Modular.get<PageController>();

  @observable
  int currentPage = 1;

  @action
  void goToPage(page) {
    currentPage = page;
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}
