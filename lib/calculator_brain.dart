import 'dart:math';

class Calculator_Brain {
  Calculator_Brain({this.height, this.weight});

  int height;
  int weight;
  double _bmi;

  String calc_BMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return "Overweight";
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return "Your result shows you are overweight. Oya, dey go gym.";
    else if (_bmi > 18.5)
      return 'Your result shows you have normal weight. Well done.';
    else
      return 'Your result shows you are underweight. Oya, start eating';
  }
}
