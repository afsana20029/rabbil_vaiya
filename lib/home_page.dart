import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbil_vaiya/page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: CounterApp(),
    );
  }
}
