import 'package:flutter/material.dart';

  String calculate(
  TextEditingController n1Controller,
  TextEditingController n2Controller,
  TextEditingController n3Controller,
) {

    if (n1Controller.text.isEmpty ||
      n2Controller.text.isEmpty ||
      n3Controller.text.isEmpty) {
    return "Preencha todos os campos!";
  } 
  
  double n1 = double.tryParse(n1Controller.text) ?? 0;
  double n2 = double.tryParse(n2Controller.text) ?? 0;
  double n3 = double.tryParse(n3Controller.text) ?? 0;

   if (n1 == 0) return "Erro: divisão por zero";

  double resultado = (n2 * n3) / n1;
  return resultado.toString();


}
