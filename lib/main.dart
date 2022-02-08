import 'package:flutter/material.dart';
import 'package:app_new/screens/home/home_screen.dart';
import 'package:app_new/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "test_App",
        theme: ThemeData(
            textTheme:
                Theme.of(context).textTheme.apply(bodyColor: kTextColor),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: HomeScreen());
  }
}
