import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() {
  runApp(ColorPage());
}

class ColorPage extends StatefulWidget {
  final RandomColor _randomColor = RandomColor();
  @override
  ColorPageState createState() => new ColorPageState();
}

class ColorPageState extends State<ColorPage> {
  Color _color = RandomColor().randomColor();

  _changeColor() {
    setState(() {
      _color = widget._randomColor.randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: GestureDetector(
        onTap: _changeColor,
        child: Container(
          color: _color,
        ),
      ),
    );
  }
}
