// ignore_for_file: public_member_api_docs

import 'dart:math';
import 'package:flutter/material.dart';

class Random1 extends StatefulWidget {
  const Random1({super.key});

  @override
  Random1State createState() => Random1State();
}

class Random1State extends State<Random1> {
  Color color = Colors.white;

  void randColor() {
    setState(() {
      color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  void didChangeDependencies() {
    randColor();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => randColor(),
      child: Container(
        alignment: Alignment.center,
        color: color,
        child: const Text(
          "Hey there",
          style: TextStyle(fontSize: 20),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
