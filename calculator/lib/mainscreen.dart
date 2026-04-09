import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Icon(Icons.arrow_back_ios, color: const Color.fromARGB(255, 255, 255, 255)),
            ),
            SizedBox(
              child: Text("Regra de Três",
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255)
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Icon(Icons.menu, color: const Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),

        backgroundColor: const Color.fromARGB(255, 139, 67, 207),
      ),
      body: Center(child: Calculator()),
    );
  }
}
