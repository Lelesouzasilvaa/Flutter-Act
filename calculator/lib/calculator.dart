import 'package:calculator/function_calculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Calculator(), debugShowCheckedModeBanner: false);
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final numero1Controller = TextEditingController();
  final numero2Controller = TextEditingController();
  final numero3Controller = TextEditingController();
  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130,
                    child: Expanded(
                      child: TextField(
                        controller: numero1Controller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Número 1",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.all(8),
                    child: Text("está para"),
                  ),
                  SizedBox(
                    width: 130,
                    child: Expanded(
                      child: TextField(
                        controller: numero2Controller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Número 2",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("assim como"),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 130,
                    child: Expanded(
                      child: TextField(
                        controller: numero3Controller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Número 3",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("está para"),
                  ),
                  SizedBox(
                    width: 130,
                    child: Align(
                      alignment: AlignmentGeometry.center,
                      child: Text("X"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resultado = calculate(
                        numero1Controller,
                        numero2Controller,
                        numero3Controller,
                      );
                    });
                  },
                  child: Text("Calcular X"),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "$resultado",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
