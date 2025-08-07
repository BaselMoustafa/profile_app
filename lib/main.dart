import 'package:first_flutter_project/profile_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {

  runApp(
    const _MyApp()
  );
}


class _MyApp extends StatelessWidget{

  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ProfileScreen(),
    );
  }
}