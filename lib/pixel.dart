import 'package:flutter/material.dart';
import 'package:tetris/const_file.dart';

class MyPixel extends StatelessWidget {
  final Widget child;
  const MyPixel({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      color: kPixelColor,
      child: child,
    );
  }
}
