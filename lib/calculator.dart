import 'package:flutter/cupertino.dart';
import 'dart:math';
class Calculator{
  final int height;
  final int weight;
  double _result;
  Calculator({@required this.height,@required this.weight});
   String getres(){
     _result=weight/pow(height/100, 2);
     return _result.toStringAsFixed(1);
   }
   String getstate(){
     if (_result >= 25){
       return 'OVER-WEIGHT';
     }else if (_result > 18.5){
       return 'NORMAL';
     }else{
       return 'UNDER-WEIGHT';
     }
   }
  String getmssg(){
    if (_result > 25){
      return 'your overweight dear,please do some exercise and take care';
    }else if (_result > 18.5){
      return 'Hurray..! your normal dear,keep maintaining good health';
    }else{
      return 'your underweight dear,please eat something good..!';
    }
  }
}