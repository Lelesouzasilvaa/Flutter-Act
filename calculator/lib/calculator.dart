import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Center(
      )
    );
  }
}
  //       child: SizedBox(
  //         width: 300,
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Row(
  //               children: [
  //                 Expanded(
  //                   child: TextField(
  //                     controller: n1,
  //                     keyboardType: TextInputType.number,
  //                     decoration: InputDecoration(
  //                       border: OutlineInputBorder(),
  //                       labelText: "Número 1",
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(width: 10),
  //                 Expanded(
  //                   child: TextField(
  //                     // controller: ,
  //                     // keyboardType: TextInputType.number,
  //                     // decoration: InputDecoration(
  //                     //   border: OutlineInputBorder(),
  //                     //   labelText: "Número 2",
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),))
  
  //             SizedBox(height: 20),
  //             SizedBox(
  //               width: 100,
  //               child: Row(
                  
  //                 children: [
  //                   // ElevatedButton(
  //                   //   onPressed: somar,
  //                   //   child: Text("Somar"),
  //                   // ),
  //                   //  ElevatedButton(
  //                   //   onPressed: dividir,
  //                   //   child: Text("Dividir"),
  //                   // ),
  //                   //  ElevatedButton(
  //                   //   onPressed: subtrair,
  //                   //   child: Text("Subtrair"),
  //                   // ),
  //                   //  ElevatedButton(
  //                   //   onPressed: multiplicar,
  //                   //   child: Text("Multiplicar"),
  //                   // ),
  //                 ],
  //               ),
  //             ),
  //             SizedBox(height: 20),
  //             // Text(
  //             //   // "Resultado: $resultado",
  //             //   // style: TextStyle(fontSize: 20),
  //             // ),
  //             ),),
            
  //         );
  // }

  // }