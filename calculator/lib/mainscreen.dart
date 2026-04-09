import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
            Container(
            
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Regra de Três"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Icon(Icons.menu, color: Colors.black),
            ),
          ],
        ),

        backgroundColor: Colors.teal,
      ),
      body: Center(child: Calculator()),
    );
  }
}
