import 'package:flutter/material.dart';

import 'const_file.dart';
import 'pixel.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int numberInRow = 10;

  int numberOfSquares = numberInRow * 16;

  static List<List<int>> pieces = [
    [4, 5, 14, 15],
    [4, 14, 24, 15],
    [5, 15, 24, 25],
    [4, 14, 24, 34],
    [4, 14, 15, 25],
    [5, 15, 14, 24],
    [4, 5, 6, 15],
  ];
  static List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.teal,
  ];

  List<int> makeSquare({int endPos}) {
    List<int> pos = [];
    pos.add(endPos - numberInRow - 1);
    pos.add(endPos - numberInRow);
    pos.add(endPos - 1);
    pos.add(endPos);
    return pos;
  }

  List<int> chosenPiece = [];

  void choosePiece() {
    chosenPiece = pieces[Random().nextInt(7)];
  }

  void startGame() {
    choosePiece();

    const Duration duration = Duration(milliseconds: 300);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGcolor,
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              child: GridView.builder(
                itemCount: numberOfSquares,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: numberInRow),
                itemBuilder: (BuildContext context, int index) {
                  return MyPixel(
                    child: Center(
                      child: Text(index.toString()),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
                // color: Colors.blue,
                ),
          ),
        ],
      ),
    );
  }
}
