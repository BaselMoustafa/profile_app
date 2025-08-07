import 'package:flutter/material.dart';

void main(List<String> args) {

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          
            Icon(
              Icons.add,
              size: 100,
              color: Colors.blueAccent,
            ),
        
            Text(
              "Hello World",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50
              ),
            )
          ],
        ),
      ),
    ),
  );
}