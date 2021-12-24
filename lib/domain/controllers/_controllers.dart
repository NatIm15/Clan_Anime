import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StateController extends GetxController {
  final List<Color> _colors = [
    Colors.blue.shade200,
    Colors.blue,
    Colors.black87,
    Colors.green.shade400,
    Colors.amber.shade300,
    Colors.pink.shade300,
    Colors.cyan.shade300,
    Colors.purple.shade300,
    Colors.teal.shade600,
    Colors.red.shade300
  ];

  int num_color = 0;

  Color get colors => _colors[num_color];

  void changeColor() {
    this.num_color++;
    if (num_color == 10) {
      num_color = 0;
    }
    update();
  }
}

class HiddenPassword extends GetxController {
  bool isHidden = true;

  void changeHidden() {
    this.isHidden = !isHidden;
    update();
    print(isHidden);
  }
}
