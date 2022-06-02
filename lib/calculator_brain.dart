import 'package:flutter/material.dart';

class calculatorBrain{
  int height;
  int weight;

  calculatorBrain(this.height, this.weight);

  double getBMI(){
    double _BMI = (weight*10000) / (height*height);
    return _BMI;
  }

  String calculateBMI(){
    double _BMI = (weight*10000) / (height*height);
    return _BMI.toStringAsFixed(2);
  }

  String getResult() {
    if (getBMI() < 18.5)
      return "UNDERWEIGHT";
    else if (getBMI() <= 24.9) return "NORMAL";
    return "OVERWEIGHT";
  }
  String getInterpretation() {
    if (getBMI() < 18.5)
      return "You are an underweight person, make sure you eat a balanced diet to stay free from all the diseases.";
    else if (getBMI() <= 24.9) return "Kudos!! You are a healthy person, keep it up!!";
    return "You are an overweight person, make sure you eat a balanced diet and exercise everyday.";
  }
}
