import 'dart:math';

import 'package:flutter/material.dart';

class Utils {
  static getRandomColor() {
    Random random = Random();
    Color randomColor = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    return randomColor;
  }
}
