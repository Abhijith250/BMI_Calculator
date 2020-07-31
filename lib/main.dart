
import 'home.dart';
import 'package:bmicalculate/result.dart';
import 'package:flutter/material.dart';
import 'home.dart';
void main(){
  runApp(
      MaterialApp(
        title: "BMI Calc ;)",
        debugShowCheckedModeBanner: false,
        home: home() ,
        theme: ThemeData(
            brightness: Brightness.dark,
            textTheme: TextTheme(
                body1: TextStyle(color: Color(0xFFFFFFFF))
            )
        ),
      )
  );
}