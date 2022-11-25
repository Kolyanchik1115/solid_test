
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class RandomColor extends StatelessWidget {
  const RandomColor({super.key});

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
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final ChangeColor state = Provider.of<ChangeColor>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Solid Software',
          style: TextStyle(
            color: state._textColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => state._randColor(),
          child: Container(
            alignment: Alignment.center,
            color: state._backColor,
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
  Color _txtColor = Colors.black;
  Color _bgColor = Colors.white;
  Color get _textColor => _txtColor;
  Color get _backColor => _bgColor;
  
  void _randColor() {
    const max = 255;
    _txtColor = Color.fromARGB(
      max,
      Random().nextInt(max),
      Random().nextInt(max),
      Random().nextInt(max),
    );
    _bgColor = Color.fromARGB(
      max,
      Random().nextInt(max),
      Random().nextInt(max),
      Random().nextInt(max),
    );
    notifyListeners();
  }
}
