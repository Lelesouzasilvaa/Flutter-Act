import 'package:calculator/mainscreen.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      title: "Regra de Tres",
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }

}