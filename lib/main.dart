import 'package:flutter/material.dart';
import 'package:prototype/pages/consentpage/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prototype',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: Registration(),
    );
  }
}
