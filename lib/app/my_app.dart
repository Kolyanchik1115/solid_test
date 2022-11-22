// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:solid_test/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
