import 'dart:math';

class CalculatorBMI {

  CalculatorBMI({this.weight,this.height});

  final int height;
  final int weight;
  double _bmi;


  String calBMI(){
    _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
   String getResult(){
    if(_bmi>25)
      return 'OVER-WEIGHT';
    else if (_bmi>18.5)
      return 'NORMAL';
    else
      return 'UNDER-WEIGHT';
   }
  String getRecommendation(){
    if(_bmi>25)
      return 'My Friend you need to work out more';
    else if (_bmi>18.5)
      return 'You got a nice body! Keep up the Hardwork';
    else
      return 'My Dear being slim is good. But you need to eat more healthy food.';
  }
}