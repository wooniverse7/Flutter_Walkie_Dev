import 'package:flutter/material.dart';
import 'package:walkie_ver01/homepage.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    //GoogleMapController

    return MaterialApp(//가장 바깥 위젯
      home:HomePage(),
    );
  }
}


