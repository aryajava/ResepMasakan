import 'package:flutter/material.dart';

import 'launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Masakan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Launcher(),
    );
  }
}
