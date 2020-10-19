import 'package:flutter/material.dart';
import 'package:walkie_ver01/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//가장 바깥 위젯
      home:HomePage(),
    );
  }
}


