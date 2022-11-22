// ignore: newline-before-return

// ignore_for_file: public_member_api_docs, prefer_final_locals

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Random0 extends StatelessWidget {
  const Random0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<ChangeColor>.value(
              value: ChangeColor(),
            ),
          ],
          child: const MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChangeColor state = Provider.of<ChangeColor>(context);
    // ignore: newline-before-return
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Solid Software',
          style: TextStyle(
            color: state.textColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => state.randColor(),
          child: Container(
            alignment: Alignment.center,
            color: state.backColor,
            child: const Text(
              "Hey there 'using Provider'",
              style: TextStyle(fontSize: 20),
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}

class ChangeColor extends ChangeNotifier {
  Color txtColor = Colors.black;
  Color bgColor = Colors.white;
  Color get textColor => txtColor;
  Color get backColor => bgColor;
  // ignore: member-ordering-extended
  final max = 255;

  void randColor() {
    txtColor = Color.fromARGB(
      max,
      Random().nextInt(max),
      Random().nextInt(max),
      Random().nextInt(max),
    );
    bgColor = Color.fromARGB(
      max,
      Random().nextInt(max),
      Random().nextInt(max),
      Random().nextInt(max),
    );
    notifyListeners();
  }
}
