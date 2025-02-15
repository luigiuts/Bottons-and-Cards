import 'package:flutter/material.dart';


const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme{
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
    }): assert(
      selectedColor >= 0, 'Select color must be greater then 0'
    ),
        assert(
          selectedColor < colorList.length, 'Select color must be less or equal then ${colorList.length -1}'
        );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
  );
}