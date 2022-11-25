import 'package:flutter/material.dart';
import 'package:solid_test/app/random_color.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomColor(),
    );
  }
}
