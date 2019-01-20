import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine_ui/screens/home_screen.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: "Wine Shop",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}