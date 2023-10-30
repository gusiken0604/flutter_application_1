import 'package:flutter/material.dart';
ß
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 31, 2, 105),
                Color.fromARGB(255, 121, 54, 237),//aaaa ああ           
              ],
              begin:Alignment.topLeft,
              end:Alignment.bottomRight,//
            ),
          ),
          child: const Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
    ),
  );
}