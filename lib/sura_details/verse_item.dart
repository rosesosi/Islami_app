import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String text;

  int pos;

  VerseWidget(this.text, this.pos);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        alignment: Alignment.center,
        child: Text(
          '$text ($pos)',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ));
  }
}
