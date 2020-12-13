import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Text(
        "container widget child",
        style: TextStyle(
            color: Colors.cyanAccent,
            fontSize: 25,
            decorationStyle: TextDecorationStyle.dashed),
        textDirection: TextDirection.ltr,
      ),
      Text(
        "second child",
        style: TextStyle(
            color: Colors.cyanAccent,
            fontSize: 25,
            decorationStyle: TextDecorationStyle.dashed),
        textDirection: TextDirection.ltr,
      )

    ]);
  }
}
