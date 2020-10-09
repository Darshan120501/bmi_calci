import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight}) {}
  String calculateBMI() {
    _bmi = (weight / (height * height) * 10000);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 30) {
      return 'OBESE';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'NORMAL';
    } else if (_bmi < 18.5) {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Your Weight is too much!!';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Your Weight is More Than Normal body Weight';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Well Done You Are Healthy';
    } else if (_bmi < 18.5) {
      return 'Your Weight is less Than Normal body Weight';
    }
  }

  Color getColor() {
    if (_bmi >= 30) {
      return Colors.red;
    } else if (_bmi >= 25 && _bmi < 30) {
      return Colors.yellow;
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return Colors.green;
    } else if (_bmi < 18.5) {
      return Colors.blue;
    }
  }
}
